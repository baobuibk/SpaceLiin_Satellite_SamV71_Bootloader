#include "app_xtp.h"
#include "definitions.h" 
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

static uint8_t  s_idle_reboot_armed = 0U;
static uint32_t s_idle_reboot_tick  = 0U;
#define IDLE_REBOOT_MS  60000U
static uint32_t s_j_first_tick = 0U;
static uint8_t  s_j_count      = 0U;
static uint32_t s_last_bucket       = 0xFFFFFFFFU;
/* =========================================================================
 * Functions
 * =========================================================================*/
static void autoboot_poll(void)
{
    int ch;

    while ((ch = UART2_ReadByte()) >= 0) {
        xBLD_SignalKeypress(&sam_xbld);
    }

    while ((ch = UART0_ReadByte()) >= 0) {
        xBLD_SignalKeypress(&sam_xbld);
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

    /* ---- Process UART input ---- */
    while ((ch = UART2_ReadByte()) >= 0)
    {
        uint8_t key = (uint8_t)ch;
        xBLD_SignalKeypress(&sam_xbld);
        s_idle_reboot_tick  = Utils_GetTick(); 
        s_idle_reboot_armed = 1U;            
        s_last_bucket       = IDLE_REBOOT_MS / 10000U;
        if (key == '1')
        {
            xTP_Log("Key '1': Sending xCLI ping self-test");

            (void)xCLI_SendRequest(&sam_xcli,
                                   XCLI_CMD_PING,
                                   0x42U,
                                   "ping 12345");
        }

        else if (key == '0')
        {
            uint32_t t = Utils_GetTick();

            xTP_Log("Key '0': Tick=%lu", (unsigned long)t);
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
    if (pin == 4U) {
        return (uint8_t)LED_PA23_Get();
    }
    if (pin == 3U) {
        return (uint8_t)LED_PC9_Get();
    }
    return 0U;
}

uint8_t xCLI_GpioWrite(uint8_t pin, uint8_t val)
{
    if (pin == 4U) {
        if (val) {
            LED_PA23_Set();
        } else {
            LED_PA23_Clear();
        }
        return (uint8_t)LED_PA23_Get();
    }

    if (pin == 3U) {
        if (val) {
            LED_PC9_Set();
        } else {
            LED_PC9_Clear();
        }
        return (uint8_t)LED_PC9_Get();
    }

    return 0U;
}

static void IdleReboot_Process(void)
{
    if (!s_idle_reboot_armed) return;

    static uint32_t s_last_rx_bytes   = 0U;
    static uint32_t s_last_active_tick = 0U;

    uint32_t now = Utils_GetTick();

    if (sam_stats.rx_bytes != s_last_rx_bytes) {
        s_last_rx_bytes    = sam_stats.rx_bytes;
        s_idle_reboot_tick = now;
        s_last_bucket      = IDLE_REBOOT_MS / 10000U;
        s_last_active_tick = now;     
        return;
    }

    uint32_t elapsed = now - s_idle_reboot_tick;
    uint32_t remain  = (elapsed < IDLE_REBOOT_MS) ? (IDLE_REBOOT_MS - elapsed) : 0U;
    uint32_t bucket  = remain / 10000U;

    if (bucket != s_last_bucket) {
        s_last_bucket = bucket;
        if (remain > 0U) {
            // Only print when entering a new bucket, to avoid spamming logs.
            // 3000ms 
            if ((now - s_last_active_tick) >= 3000U) {
                xTP_Log("[xBLD] Auto-boot in %us... (any key to cancel)",
                        (unsigned)(remain / 1000U));
            }
        }
    }

    if (elapsed >= IDLE_REBOOT_MS) {
        xTP_Log("[xBLD] Idle timeout - booting...");
        s_idle_reboot_armed = 0U;
        xBLD_AutobootRun(&sam_xbld);
    }
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
    IdleReboot_Process();
}

void App_XTP_Register(void) {
    /* ---- xTP init ---- */
    sam_xtp.port = xTP_GetDefaultPort();
    xTP_Init(&sam_xtp, 0x01U);

    /* ---- Register xTP protocol test handlers (IDs 0x01..0x04) ---- */
    // xTP_RegisterCommand(&sam_xtp, 0x01U, Test_Echo_Handler);
    // xTP_RegisterCommand(&sam_xtp, 0x02U, Test_Ping_Handler);
    // xTP_RegisterCommand(&sam_xtp, 0x03U, Test_Fill_Handler);
    // xTP_RegisterCommand(&sam_xtp, 0x04U, Test_CorruptReq_Handler);

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
    bld_cfg.port.poll_fn = autoboot_poll;
    xBLD_Init(&sam_xbld, &bld_cfg);
    if (!xBLD_AutobootRun(&sam_xbld)) { 
        s_idle_reboot_armed = 1U;
        s_idle_reboot_tick  = Utils_GetTick();
        xTP_Log("[xBLD] Auto-boot in %us if no activity. Keys: '0'=tick '1'=ping 'j'+'j'=jump",
                (unsigned)(IDLE_REBOOT_MS / 1000U));
    }
    /* Example: add an application-specific command (ADC stub) */
    /* xCLI_RegisterCommand(&sam_xcli, 0x30U, "adc", "Read ADC ch", adc_handler); */

    xTP_Log("xTP+xCLI ready.  CMD=0x%04X  RESP=0x%04X",
            (unsigned)XCLI_XTP_CMD_ID, (unsigned)XCLI_XTP_RESP_ID);

//  1ms priodic task is too low for high-throughput 
//  Using main loop for high performance.

//     SCH_TaskPropertyTypedef prop = {
//         .taskType       = SCH_TASK_SYNC,
//         .taskPriority   = SCH_TASK_PRIO_3,
//         .taskPeriodInMS = 1,
//         .taskFunction   = XTP_Run,
//         .taskTick       = 0
//     };
//    SCH_TASK_CreateTask(&app_xtp_handle, &prop);
}