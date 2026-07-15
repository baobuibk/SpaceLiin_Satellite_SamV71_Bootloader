/*
 * xbld_port (samv71) .c - xBLD
 * Ver 1.2.2:
 *  - GETD flush after write/erase to avoid stale read cache during verify
 */

#include "xbld_port.h"
#include "xbld_config.h"
#include "definitions.h"
#include "peripheral/efc/plib_efc.h"
#include "device.h"
#include <string.h>
#include "Tick/tick.h"
#include "USART_SPI_FRAM/fram_MB85RS2.h"
#include "IO_ExWD-TPL5010/wd_tpl5010.h"


/* Peripheral de-initialization function */
/* WARNING !!!!!!!!!!
 * You MUST implement this function to disable all peripherals (e.g. UART, SPI, timers)
 */
__attribute__((weak)) void xBLD_Peripheral_DeInit(void)
{
    volatile uint32_t timeout;
    timeout = 500000UL;
    while (!(UART0_REGS->UART_SR & UART_SR_TXEMPTY_Msk) && timeout--)
    { __asm volatile ("nop"); }
    UART0_REGS->UART_IDR = 0xFFFFFFFFU;                         
    UART0_REGS->UART_CR  = UART_CR_RSTRX_Msk | UART_CR_RSTTX_Msk  
                         | UART_CR_RXDIS_Msk  | UART_CR_TXDIS_Msk; 
 
    timeout = 500000UL;
    while (!(UART2_REGS->UART_SR & UART_SR_TXEMPTY_Msk) && timeout--)
    { __asm volatile ("nop"); }
    UART2_REGS->UART_IDR = 0xFFFFFFFFU;
    UART2_REGS->UART_CR  = UART_CR_RSTRX_Msk | UART_CR_RSTTX_Msk
                         | UART_CR_RXDIS_Msk  | UART_CR_TXDIS_Msk;
 

    timeout = 500000UL;
    while (!(USART2_REGS->US_CSR & US_CSR_SPI_TXEMPTY_Msk) && timeout--)
    {
        __asm volatile ("nop");
    }

    USART2_REGS->US_IDR = 0xFFFFFFFFU;
    USART2_REGS->US_CR =
          US_CR_SPI_RSTRX_Msk
        | US_CR_SPI_RSTTX_Msk
        | US_CR_SPI_RSTSTA_Msk
        | US_CR_SPI_RXDIS_Msk
        | US_CR_SPI_TXDIS_Msk;    

    /* ----------------------------------------------------------------------*
     * e.g.:                                                                 *
     *   SPI0_REGS->SPI_IDR  = 0xFFFFFFFFU;                                  *
     *   SPI0_REGS->SPI_CR   = SPI_CR_SPIDIS_Msk;                            *
     *                                                                       *
     *   TC0_CH0_REGS->TC_IDR = 0xFFFFFFFFU;                                 *
     *   TC0_CH0_REGS->TC_CCR = TC_CCR_CLKDIS_Msk;                           *
     *-----------------------------------------------------------------------*/
}

#define XBLD_DCACHE_INVALIDATE(addr, len)  do {                          \
    if (SCB->CCR & SCB_CCR_DC_Msk) {                                     \
        SCB_InvalidateDCache_by_Addr((void*)(addr), (int32_t)(len));     \
    }                                                                     \
    __DSB(); __ISB();                                                     \
} while(0)

#define XBLD_DCACHE_CLEAN_INVALIDATE()  do {                             \
    if (SCB->CCR & SCB_CCR_DC_Msk) {                                     \
        SCB_CleanInvalidateDCache();                                      \
    }                                                                     \
    if (SCB->CCR & SCB_CCR_IC_Msk) {                                     \
        SCB_InvalidateICache();                                           \
    }                                                                     \
    __DSB(); __ISB();                                                     \
} while(0)

/* IRQ barrier macros */
#if XBLD_USE_IRQ_BARRIER
  #define XBLD_IRQ_DISABLE()   uint32_t _xbld_primask = __get_PRIMASK(); __disable_irq()
  #define XBLD_IRQ_RESTORE()   __set_PRIMASK(_xbld_primask)
#else
  #define XBLD_IRQ_DISABLE()   ((void)0)
  #define XBLD_IRQ_RESTORE()   ((void)0)
#endif

/* Watchdog */
static void port_wdt_kick(void)
{
    Watchdog_Device_Update();
}

/* Flash init */
static int port_flash_init(void)
{
    EFC_Initialize();
    return XBLD_PORT_OK;
}

/* EEFC read-side cache/pipeline state.
 * false => next port_flash_read() must flush the EEFC read cache (GETD)
 * before trusting a direct memory-mapped read. Set false whenever flash
 * content changes (erase/write); set true once flushed. This avoids
 * re-issuing GETD on every single read chunk during a sequential verify
 * pass, where nothing changes between reads. */
static volatile bool s_efc_read_cache_valid = false;

static void port_efc_cache_flush(void)
{
    /* GETD = 0x00: side-effect used here purely to flush/resync the EEFC
     * internal read pipeline before trusting a direct
     * memory-mapped read right after a command-mode operation. */
    EFC_REGS->EEFC_FCR = EEFC_FCR_FKEY_PASSWD | EEFC_FCR_FCMD_GETD;
    while (!(EFC_REGS->EEFC_FSR & EEFC_FSR_FRDY_Msk)) {}

    {
        volatile uint32_t delay = 10000U;
        while (delay--)
        {
            __asm volatile ("nop");
        }
    }

    s_efc_read_cache_valid = true;
}

/* Flash erase */
static int port_flash_erase(uint32_t addr, uint32_t size)
{
    if (size == 0U) return XBLD_PORT_ERR;

    s_efc_read_cache_valid = false;

    uint32_t num_sectors = (size + EFC_SECTORSIZE - 1U) / EFC_SECTORSIZE;
    uint32_t cur = addr & ~((uint32_t)(EFC_SECTORSIZE - 1U));

    for (uint32_t i = 0U; i < num_sectors; i++)
    {
        XBLD_IRQ_DISABLE();

        if (!EFC_SectorErase(cur))
        {
            XBLD_IRQ_RESTORE();
            return XBLD_PORT_ERR;
        }
        while (EFC_IsBusy());

        XBLD_IRQ_RESTORE();
        port_wdt_kick();

        cur += EFC_SECTORSIZE;

        {
            volatile uint32_t delay = 10000U;

            while (delay--)
            {
                __asm volatile ("nop");
            }
        }
    }
    {
        volatile uint32_t delay = 5000000U;

        while (delay--)
        {
            __asm volatile ("nop");
        }
    }

    return XBLD_PORT_OK;
}

/* Flash write (QuadWord) */
static int port_flash_write(uint32_t addr, const uint8_t *data, uint32_t len)
{
    static uint8_t qw_buf[16];

    s_efc_read_cache_valid = false;

    while (len > 0U)
    {
        uint32_t aligned = addr & ~0xFU;
        uint32_t offset  = addr & 0xFU;
        uint32_t chunk   = 16U - offset;
        if (chunk > len) chunk = len;

        XBLD_DCACHE_INVALIDATE(aligned, 16U);

        XBLD_IRQ_DISABLE();
        memcpy(qw_buf, (const void *)aligned, 16U);
        memcpy(qw_buf + offset, data, chunk);

        if (!EFC_QuadWordWrite((uint32_t *)qw_buf, aligned))
        {
            XBLD_IRQ_RESTORE();
            return XBLD_PORT_ERR;
        }
        while (EFC_IsBusy());

        {
            volatile uint32_t delay = 10000U;

            while (delay--)
            {
                __asm volatile ("nop");
            }
        }

        XBLD_IRQ_RESTORE();

        XBLD_DCACHE_INVALIDATE(aligned, 16U);

        addr += chunk; data += chunk; len -= chunk;
    }
    return XBLD_PORT_OK;
}

static int port_flash_read(uint32_t addr, uint8_t *data, uint32_t len)
{
    if (data == NULL || len == 0U) return XBLD_PORT_ERR;

    if (!s_efc_read_cache_valid)
    {
        port_efc_cache_flush();
    }

    XBLD_DCACHE_INVALIDATE(addr, len);
    memcpy(data, (const void *)addr, len);
    return XBLD_PORT_OK;
}

/* Tick */
static uint32_t port_get_tick(void) { 
    return Utils_GetTick(); 
}

/* ROM */
static uint8_t port_get_boot_cause(void)
{
    uint32_t rtype = (RSTC_REGS->RSTC_SR & RSTC_SR_RSTTYP_Msk)
                     >> RSTC_SR_RSTTYP_Pos;
 
    /* RSTTYP 0..4 are valid on SAMV71; anything else -> unknown */
    return (rtype <= 4U) ? (uint8_t)rtype : 0xFFU;
}

static int port_rom_read(uint32_t addr, uint8_t *data, uint32_t len)
{
    if (data == NULL || len == 0U) return XBLD_PORT_ERR;
    return (FRAM_SPI_ReadMem(addr, data, (uint16_t)len) == E_OK)
           ? XBLD_PORT_OK : XBLD_PORT_ERR;
}

static int port_rom_write(uint32_t addr, const uint8_t *data, uint32_t len)
{
    if (data == NULL || len == 0U) return XBLD_PORT_ERR;
    return (FRAM_SPI_WriteMem(addr, (uint8_t *)(uintptr_t)data, (uint16_t)len) == E_OK)
           ? XBLD_PORT_OK : XBLD_PORT_ERR;
}

/* System reset */
static void port_system_reset(void) { 
    NVIC_SystemReset(); 
}

/* Jump to app */
typedef void (*FpVoidFn)(void);

static void port_jump_to_app(uint32_t app_vector_addr)
{
    uint32_t sp    = *(const uint32_t *)(app_vector_addr);
    uint32_t reset = *(const uint32_t *)(app_vector_addr + 4U);

    if (sp < 0x20400000UL || sp > 0x20460000UL)
        return;

    xBLD_Peripheral_DeInit();

    __disable_irq();
    SysTick->CTRL = 0U;

    for (int i = 0; i < 8; i++)
    {
        NVIC->ICER[i] = 0xFFFFFFFFU;
        NVIC->ICPR[i] = 0xFFFFFFFFU;
    }

    SCB->VTOR = app_vector_addr & SCB_VTOR_TBLOFF_Msk;
    XBLD_DCACHE_CLEAN_INVALIDATE();

    __set_MSP(sp);
    ((FpVoidFn)reset)();
    while (1) {}
}

static uint32_t port_get_board_ident(void)
{
//    return (uint32_t)BOARD_IDENT_Get();  /* PD10: 0=BOARD1, 1=BOARD2 */
    return 0; 
}

void xBLD_ForceJump(uint32_t app_vector_addr)
{
    uint32_t sp    = *(const uint32_t *)(app_vector_addr);
    uint32_t reset = *(const uint32_t *)(app_vector_addr + 4U);

    xBLD_Peripheral_DeInit();

    __disable_irq();
    SysTick->CTRL = 0U;

    for (int i = 0; i < 8; i++)
    {
        NVIC->ICER[i] = 0xFFFFFFFFU;
        NVIC->ICPR[i] = 0xFFFFFFFFU;
    }

    SCB->VTOR = app_vector_addr & SCB_VTOR_TBLOFF_Msk;
    XBLD_DCACHE_CLEAN_INVALIDATE();

    __set_MSP(sp);
    ((FpVoidFn)reset)();
    while (1) {}
}

/* Default port */
xBLD_Port_t xBLD_GetDefaultPort(void)
{
    xBLD_Port_t port = {
        .flash_init     = port_flash_init,
        .flash_erase    = port_flash_erase,
        .flash_write    = port_flash_write,
        .flash_read     = port_flash_read,
        .get_tick       = port_get_tick,
        .get_boot_cause = port_get_boot_cause,
        .rom_read       = port_rom_read,
        .rom_write      = port_rom_write,
        .system_reset   = port_system_reset,
        .jump_to_app    = port_jump_to_app,
        .get_board_ident = port_get_board_ident,
        .wdt_kick       = port_wdt_kick,
    };
    return port;
}