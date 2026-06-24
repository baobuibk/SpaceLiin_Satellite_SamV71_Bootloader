#if 0
/*
 * xbld_port_template.c xBLD port template for new MCU targets.
 * This is a template file for porting xBLD to new MCU targets. It contains stub implementations and detailed comments on how to implement each function based on your MCU's flash architecture and APIs. Follow the instructions in the comments to create a working port for your specific MCU.
 * HOW TO PORT:
 *   1. Copy this file -> xbld_port_<your_mcu>.c
 *   2. Replace all TODO sections with MCU-specific implementations
 *   3. Update xbld_config.h:
 *      - XBLD_PAGE_SIZE      your MCU's flash page size
 *      - XBLD_SECTOR_SIZE    your MCU's flash erase sector size
 *      - XBLD_APP_HDR_ADDR   your flash memory map
 *      - XBLD_APP_MAX_SIZE   your available app flash
 *      - XBLD_HW_ID          unique ID for your target
 *   4. Compile and link this file instead of xbld_port_samv71.c
 *
 * Example configurations:
 *
 *   STM32F4 (sector erase, byte-programmable):
 *     PAGE_SIZE = 256, SECTOR_SIZE = 16384 (16K for sectors 0-3)
 *     flash_write: use HAL_FLASH_Program with TYPEPROGRAM_BYTE
 *
 *   STM32H7 (flash word = 256 bits):
 *     PAGE_SIZE = 256, SECTOR_SIZE = 131072 (128K)
 *     flash_write: use HAL_FLASH_Program with TYPEPROGRAM_FLASHWORD
 *
 *   Tiva TM4C (1K pages):
 *     PAGE_SIZE = 1024, SECTOR_SIZE = 1024
 *     flash_write: use FlashProgram(), flash_erase: FlashErase()
 */

#include "xbld_port.h"
#include "xbld_config.h"
#include <string.h>

/* TODO: Include your MCU-specific headers here */
/* #include "stm32f4xx_hal.h"  */
/* #include "driverlib/flash.h" */


/* Flash init  */
static int port_flash_init(void)
{
    /* TODO: Initialize flash controller if needed.
     * Example STM32:
     *   HAL_FLASH_Unlock();
     *   __HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_ALL_ERRORS);
     *
     * Example Tiva:
     *   (nothing needed flash is always accessible)
     */
    return XBLD_PORT_OK;
}

/* Flash erase */
static int port_flash_erase(uint32_t addr, uint32_t size)
{
    if (size == 0U) return XBLD_PORT_ERR;

    /* TODO: Erase flash sectors covering [addr, addr+size).
     *
     * Example STM32F4:
     *   FLASH_EraseInitTypeDef erase = {
     *       .TypeErase = FLASH_TYPEERASE_SECTORS,
     *       .Sector    = addr_to_sector(addr),
     *       .NbSectors = compute_num_sectors(addr, size),
     *       .VoltageRange = FLASH_VOLTAGE_RANGE_3,
     *   };
     *   uint32_t err;
     *   HAL_FLASH_Unlock();
     *   HAL_FLASHEx_Erase(&erase, &err);
     *   HAL_FLASH_Lock();
     *
     * Example Tiva:
     *   for each 1K block:
     *       FlashErase(block_addr);
     */

    (void)addr;
    (void)size;
    return XBLD_PORT_ERR;  /* TODO: implement */
}

/* Flash write */
static int port_flash_write(uint32_t addr, const uint8_t *data, uint32_t len)
{
    /* TODO: Write data to flash. Flash must be erased first.
     *
     * For page-write MCUs (SAMV71, some STM32), if addr is page-aligned
     * and len == page size, use the fast page-write API.
     *
     * Example STM32F4 (byte-programmable):
     *   HAL_FLASH_Unlock();
     *   for (uint32_t i = 0; i < len; i++)
     *       HAL_FLASH_Program(FLASH_TYPEPROGRAM_BYTE, addr + i, data[i]);
     *   HAL_FLASH_Lock();
     *
     * Example Tiva:
     *   FlashProgram((uint32_t *)data, addr, len);
     */

    (void)addr;
    (void)data;
    (void)len;
    return XBLD_PORT_ERR;  /* TODO: implement */
}

/* Flash read */
static int port_flash_read(uint32_t addr, uint8_t *data, uint32_t len)
{
    if (data == NULL || len == 0U) return XBLD_PORT_ERR;

    /* Most MCUs: flash is memory-mapped, just memcpy.
     * If your MCU has DCache (Cortex-M7), invalidate first. */

    /* TODO: Invalidate cache if needed:
     *   SCB_InvalidateDCache_by_Addr((void *)addr, len);
     *   __DSB(); __ISB();
     */

    memcpy(data, (const void *)addr, len);
    return XBLD_PORT_OK;
}

/* Tick */
static uint32_t port_get_tick(void)
{
    /* TODO: Return millisecond tick counter.
     *
     * Example STM32: return HAL_GetTick();
     * Example Tiva:  return your SysTick-based ms counter.
     */
    return 0U;  /* TODO: implement */
}

/* System reset */
static void port_system_reset(void)
{
    /* CMSIS standard works on all Cortex-M */
    NVIC_SystemReset();
}

/* Jump to app */
typedef void (*FpVoidFn)(void);

static void port_jump_to_app(uint32_t app_vector_addr)
{
    uint32_t sp    = *(const uint32_t *)(app_vector_addr);
    uint32_t reset = *(const uint32_t *)(app_vector_addr + 4U);

    /* TODO: Validate SP is in your SRAM range.
     * Example:
     *   if (sp < SRAM_START || sp > SRAM_END) return;
     */

    /* 1. Disable interrupts */
    __disable_irq();

    /* 2. Stop SysTick */
    SysTick->CTRL = 0U;

    /* 3. Disable and clear NVIC */
    for (int i = 0; i < 8; i++)
    {
        NVIC->ICER[i] = 0xFFFFFFFFU;
        NVIC->ICPR[i] = 0xFFFFFFFFU;
    }

    /* 4. Set VTOR */
    SCB->VTOR = app_vector_addr & SCB_VTOR_TBLOFF_Msk;
    __DSB();
    __ISB();

    /* TODO: If Cortex-M7 (DCache/ICache), clean and invalidate:
     *   SCB_CleanInvalidateDCache();
     *   SCB_InvalidateICache();
     *   __DSB(); __ISB();
     */

    /* 5. Set MSP and jump */
    __set_MSP(sp);
    ((FpVoidFn)reset)();

    while (1) {}
}

/* Default port constructor */
xBLD_Port_t xBLD_GetDefaultPort(void)
{
    xBLD_Port_t port = {
        .flash_init   = port_flash_init,
        .flash_erase  = port_flash_erase,
        .flash_write  = port_flash_write,
        .flash_read   = port_flash_read,
        .get_tick     = port_get_tick,
        .system_reset = port_system_reset,
        .jump_to_app  = port_jump_to_app,
    };
    return port;
}

#endif