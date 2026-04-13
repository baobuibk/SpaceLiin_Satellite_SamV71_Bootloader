/*
 * app_alive.c
 */

#include "app_alive.h"
#include "definitions.h"
#include "peripheral/pio/plib_pio.h"
#include "IO_ExWD-TPL5010/wd_tpl5010.h"
#include "Tick/tick.h"

SCH_TASK_HANDLE alive_handle = SCH_DEFAULT_TASK_HANDLE;

#define ALIVE_PERIOD_MS     100U  
#define LED_PERIOD_MS       1000U  
#define WD_HIGH_PERIOD_MS   HIGH_PERIOD 
#define WD_LOW_PERIOD_MS    LOW_PERIOD 

/* ------------------------------------------------------------------ */
static void Alive_Run(void)
{
    uint32_t now = Utils_GetTick();   // 1ms resolution

    /* --- LED: LED_PERIOD_MS --- */
    static uint32_t led_last = 0U;
    if ((now - led_last) >= LED_PERIOD_MS)
    {
        led_last = now;
        LED_PC9_Toggle();
    }

    /* --- Watchdog: HIGH / LOW --- */
    static uint32_t wd_last = 0U;

    uint32_t wd_period = (Watchdog_Device_GetState() == WATCHDOG_STATE_HIGH)
                         ? WD_HIGH_PERIOD_MS     /* 200ms */
                         : WD_LOW_PERIOD_MS;     /* 600ms */

    if ((now - wd_last) >= wd_period)
    {
        wd_last = now;
        Watchdog_Device_Update();
    }
}

/* ------------------------------------------------------------------ */
void App_Alive_Register(void)
{
    Watchdog_Device_Init();

    SCH_TaskPropertyTypedef prop = {
        .taskType       = SCH_TASK_SYNC,
        .taskPriority   = SCH_TASK_PRIO_0,
        .taskPeriodInMS = ALIVE_PERIOD_MS,
        .taskFunction   = Alive_Run,
        .taskTick       = 0U
    };
    SCH_TASK_CreateTask(&alive_handle, &prop);
}