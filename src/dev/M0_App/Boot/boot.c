#include "AppOS/App_Root/app_root.h"
#include "OS/Scheduler/scheduler.h"
#include "peripheral/systick/plib_systick.h"
#include "USART_SPI_FRAM/fram_MB85RS2.h"

#include "UART/uart_irq.h"
#include "ATSAMV71cm7_it.h"

#include "AppOS/App_XTP/app_xtp.h"
#include "xbld/xbld_port.h"

void BootManager_SystemInit(void){
    SYSTICK_TimerInitialize();
    EX_SysTick_HandlerRegister();
    SYSTICK_TimerStart();
    
    
    UART_Driver_Init();

    USART_SPI_Driver_Init();

    FRAM_SPI_Driver_Init();

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