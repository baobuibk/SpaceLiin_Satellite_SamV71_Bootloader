#include "app_xtp.h"
#include "definitions.h"
#include <stdbool.h>
/* =========================================================================
 * Include
 * =========================================================================*/
#include "UART/uart_irq.h"
#include "Tick/tick.h"
#include "xtp/xtp.h"
#include "xtp/xtp_arq.h"
#include "xtp/xtp_seg.h"
#include "xcli/xcli.h"
#include "xcli/xcli_commands.h"
#include "xbld/xbld.h"
#include "xbld/xbld_bootinfo.h"
#include "USART_SPI_FRAM/fram_MB85RS2.h"
#include "definitions.h"
/* =========================================================================
 * Private Definitions
 * =========================================================================*/
xTP_Instance_t   sam_xtp;
#if XTP_USE_ARQ
xTP_ARQ_t        sam_arq;
#endif
#if XTP_USE_SEG
xTP_Seg_Stream_t sam_streams[XTP_SEG_MAX_STREAMS];
#endif
xCLI_Instance_t  sam_xcli;
xTP_Stats_t      sam_stats;
xBLD_Instance_t  sam_xbld;

static uint32_t s_j_first_tick = 0U;
static uint8_t  s_j_count      = 0U;

static uint8_t  s_r_count      = 0U;
static uint32_t s_r_first_tick = 0U;

static const uint32_t s_baud_table[] = { 250000U, 500000U, 1000000U, 921600U, 115200U };
#define BAUD_TABLE_LEN  (sizeof(s_baud_table) / sizeof(s_baud_table[0]))
static uint8_t s_baud_idx = 0U;

/* =========================================================================
 * FRAM Test
 * =========================================================================*/
#define FRAM_BOOT_HISTORY_ADDR  (0x000100UL)
#define FRAM_TEST_ADDR          (0x000010UL) 
#define FRAM_TEST_LEN           (8U)      
 
static void FRAM_Test_Write(void)
{
    uint8_t wbuf[FRAM_TEST_LEN];
    uint32_t seed = Utils_GetTick();
    for (uint8_t i = 0U; i < FRAM_TEST_LEN; i++)
    {
        seed = seed * 1664525UL + 1013904223UL;  
        wbuf[i] = (uint8_t)(seed >> 16U);
    }
 
    xTP_Log("[FRAM] Writing %u bytes to 0x%06lX:", FRAM_TEST_LEN, (unsigned long)FRAM_TEST_ADDR);
    xTP_Log("[FRAM] W: %02X %02X %02X %02X %02X %02X %02X %02X",
            wbuf[0], wbuf[1], wbuf[2], wbuf[3],
            wbuf[4], wbuf[5], wbuf[6], wbuf[7]);
 
    Std_ReturnType status = FRAM_SPI_WriteMem(FRAM_TEST_ADDR, wbuf, FRAM_TEST_LEN);
 
    if (status == E_OK)
    {
        xTP_Log("[FRAM] Write OK");
    }
    else
    {
        xTP_Log("[FRAM] Write FAILED (status=%d)", (int)status);
    }
}
 
static void FRAM_Test_Read(void)
{
    uint8_t rbuf[FRAM_TEST_LEN];
 
    xTP_Log("[FRAM] Reading %u bytes from 0x%06lX...", FRAM_TEST_LEN, (unsigned long)FRAM_TEST_ADDR);
 
    Std_ReturnType status = FRAM_SPI_ReadMem(FRAM_TEST_ADDR, rbuf, FRAM_TEST_LEN);
 
    if (status == E_OK)
    {
        xTP_Log("[FRAM] R: %02X %02X %02X %02X %02X %02X %02X %02X",
                rbuf[0], rbuf[1], rbuf[2], rbuf[3],
                rbuf[4], rbuf[5], rbuf[6], rbuf[7]);
    }
    else
    {
        xTP_Log("[FRAM] Read FAILED (status=%d)", (int)status);
    }
}

/* =========================================================================
 * Functions
 * =========================================================================*/

/*  Only these keys are recognized commands below */
static bool is_console_key(uint8_t ch)
{
    switch (ch) {
        case '0': case '1': case '2': case '3': case '4': case '\r' : case '\n':
        case 'b': case 'r': case 'j': case '!':
            return true;
        default:
            return false;
    }
}

void Process_User_Input(void)
{
    int ch;
    uint32_t now = Utils_GetTick();

    /* ---- Auto timeout for 'j' ---- */
    if (s_j_count == 1U)
    {
        if ((now - s_j_first_tick) > 2000U)
        {
            xTP_Log("Key 'j': Timeout",
                    (unsigned long)now,
                    (unsigned long)s_j_first_tick);

            s_j_first_tick = 0U;
            s_j_count      = 0U;
        }
    }

    if (s_r_count == 1U)
    {
        if ((now - s_r_first_tick) > 2000U)
        {
            xTP_Log("Key 'r': confirm timeout, cancelled");
            s_r_first_tick = 0U;
            s_r_count      = 0U;
        }
    }

    /* ---- Process UART input ---- */
    while ((ch = UART2_ReadByte()) >= 0)
    {
        uint8_t key = (uint8_t)ch;
        if (!is_console_key(key)) { continue; }

        if (key == '\r' || key == '\n')
        {
            xBLD_AutobootSignalActivity(&sam_xbld);

            s_j_first_tick = 0U; s_j_count = 0U;
            s_r_first_tick = 0U; s_r_count = 0U;

            xTP_Log("Refresh -> xBLD [C.H]Version: %s, Tick=%lu", XBLD_VERSION_STR, (unsigned long)Utils_GetTick());
        }
        else if (key == '0')
        {
            uint32_t t = Utils_GetTick();
            xTP_Log("Key '0': Tick=%lu", (unsigned long)t);
        }
        else if (key == '1')
        {
            xTP_Log("Key '1': Sending xCLI ping self-test");
            (void)xCLI_SendRequest(&sam_xcli,
                                   XCLI_CMD_PING,
                                   0x42U,
                                   "ping 12345");
        }
        else if (key == '2')
        {
            FRAM_Test_Write();
        }
        else if (key == '3')
        {
            FRAM_Test_Read();
        }
        else if (key == '4')
        {
            xBLD_BootInfo_Print();
        }
        else if (key == 'b')
        {
            s_baud_idx = (s_baud_idx + 1U) % BAUD_TABLE_LEN;
            uint32_t new_baud = s_baud_table[s_baud_idx];

            UART_SERIAL_SETUP setup = {
                .baudRate = new_baud,
                .parity   = UART_PARITY_NONE,
            };

            while (UART0_WriteIsBusy()) { ; }

            if (UART0_SerialSetup(&setup, 0U))
            {
                xTP_Log("[BAUD] UART0 -> %lu bps", (unsigned long)new_baud);
            }
            else
            {
                xTP_Log("[BAUD] SerialSetup FAILED for %lu bps", (unsigned long)new_baud);
            }
        }
        else if (key == 'r')
        {
            if (s_r_count == 0U)
            {
                s_r_first_tick = Utils_GetTick();
                s_r_count      = 1U;
                xTP_Log("Key 'r': Press '!' within 2s to confirm reset");
            }
        }
        else if (key == '!')
        {
            if (s_r_count == 1U)
            {
                uint32_t diff = Utils_GetTick() - s_r_first_tick;

                if (diff <= 2000U)
                {
                    xTP_Log("Key '!': confirmed, resetting...");
                    while (UART0_WriteIsBusy()) { ; }
                    NVIC_SystemReset();
                }
                else
                {
                    xTP_Log("Key '!': timeout");
                }

                s_r_first_tick = 0U;
                s_r_count      = 0U;
            }
        }
        else if (key == 'j')
        {
            now = Utils_GetTick();

            if (s_j_count == 0U)
            {
                /* First press */
                s_j_first_tick = now;
                s_j_count      = 1U;

                xTP_Log("Key 'j': Press again within 2s to force jump",
                        (unsigned long)now);
            }
            else
            {
                /* Second press */
                uint32_t diff = now - s_j_first_tick;

                xTP_Log("Key 'j': Got!",
                        (unsigned long)now,
                        (unsigned long)diff);

                if (diff <= 2000U)
                {
                    xTP_Log("Key 'j': Force jump to app 0x%08X",
                            (unsigned)XBLD_APP_START_ADDR);
                    xBLD_ForceJump(XBLD_APP_START_ADDR);
                }
                else
                {
                    xTP_Log("Key 'j': Timeout");
                }

                /* Reset state */
                s_j_first_tick = 0U;
                s_j_count      = 0U;
            }
        }
    }
}

uint8_t xCLI_GpioRead(uint8_t pin)
{
    return 0U;
}

uint8_t xCLI_GpioWrite(uint8_t pin, uint8_t val)
{
    return 0U;
}

/* =========================================================================
 * Core
 * =========================================================================*/

SCH_TASK_HANDLE app_xtp_handle = SCH_DEFAULT_TASK_HANDLE;

void XTP_Run(void) {
    xTP_Process(&sam_xtp);

#if XTP_USE_SEG
    xTP_SEG_Poll(&sam_xtp);
#endif
    Process_User_Input();
    xBLD_AutobootPoll(&sam_xbld);
}

void App_XTP_Register(void) {
    /* ---- xTP init ---- */
    sam_xtp.port = xTP_GetDefaultPort();
    xTP_Init(&sam_xtp, 0x01U);

    /* ---- ARQ / SEG / Stats ---- */
#if XTP_USE_ARQ
    xTP_ARQ_Init(&sam_xtp, &sam_arq);
#endif
#if XTP_USE_SEG
    xTP_SEG_Init(&sam_xtp, sam_streams);
#endif
    xTP_Stats_Attach(&sam_xtp, &sam_stats);

    xCLI_Init(&sam_xcli, &sam_xtp);
    xCLI_RegisterBuiltins(&sam_xcli);

    xBLD_Config_t bld_cfg = {
        .port = xBLD_GetDefaultPort(),
        .xtp  = &sam_xtp,
        .xcli = &sam_xcli,
    };
    xBLD_Init(&sam_xbld, &bld_cfg);
    uint8_t cause = bld_cfg.port.get_boot_cause
                    ? bld_cfg.port.get_boot_cause() : 0xFFU;
    xBLD_BootInfo_Record(&bld_cfg.port, cause);
    xBLD_AutobootArm(&sam_xbld);
    xTP_Log("[xBLD] Autoboot armed: slot 0 in %us unless Command "
            "or ConsoleKey is detected.",
            (unsigned)(XBLD_AUTOBOOT_TIMEOUT_MS / 1000U));

    xTP_Log("xTP+xCLI ready.  CMD=0x%04X  RESP=0x%04X",
            (unsigned)XCLI_XTP_CMD_ID, (unsigned)XCLI_XTP_RESP_ID);
    xTP_Log("xBLD [C.H]Version: %s", XBLD_VERSION_STR);
    {
        uint8_t board_id = BOARD_IDENT_Get();
        xTP_Log("HW Version ISS - 1.0.0 | Board: %s", board_id ? "BOARD2" : "BOARD1");
    }

    xBLD_BootInfo_Print();
}