#include "app_blink.h"
#include "definitions.h" 
#include "peripheral/pio/plib_pio.h"

SCH_TASK_HANDLE blink_handle = SCH_DEFAULT_TASK_HANDLE;

static void Blink_Run(void) {
    // LED_PA23_Toggle();
    LED_DEBUG_Toggle();
}

void App_Blink_Register(void) {
    SCH_TaskPropertyTypedef prop = {
        .taskType       = SCH_TASK_SYNC,
        .taskPriority   = SCH_TASK_PRIO_0,
        .taskPeriodInMS = 1000,
        .taskFunction   = Blink_Run,
        .taskTick       = 0
    };
    SCH_TASK_CreateTask(&blink_handle, &prop);
}