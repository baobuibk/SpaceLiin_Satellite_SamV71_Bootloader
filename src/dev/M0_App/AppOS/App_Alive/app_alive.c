#include "app_alive.h"
#include "definitions.h" 
#include "peripheral/pio/plib_pio.h"

SCH_TASK_HANDLE alive_handle = SCH_DEFAULT_TASK_HANDLE;

static void Alive_Run(void) {
    LED_PC9_Toggle();
}

void App_Alive_Register(void) {
    SCH_TaskPropertyTypedef prop = {
        .taskType       = SCH_TASK_SYNC,
        .taskPriority   = SCH_TASK_PRIO_0,
        .taskPeriodInMS = 2000,
        .taskFunction   = Alive_Run,
        .taskTick       = 1000
    };
    SCH_TASK_CreateTask(&alive_handle, &prop);
}