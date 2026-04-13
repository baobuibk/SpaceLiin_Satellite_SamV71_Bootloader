#include "AppOS/App_Root/app_root.h"
#include "OS/Scheduler/scheduler.h"
#include "peripheral/systick/plib_systick.h"

#include "UART/uart_irq.h"
#include "ATSAMV71cm7_it.h"

#include "AppOS/App_XTP/app_xtp.h"

void BootManager_SystemInit(void){
    EX_SysTick_HandlerRegister();
    SYSTICK_TimerStart();
    
    UART_Driver_Init();
    
    SCH_Initialize();
    AppRoot_RegisterAll();
}

void BootManager_SystemStart(void) {
    SCH_StartScheduler();

    while (1) {
        XTP_Run();
        SCH_HandleScheduledTask();
    }
}