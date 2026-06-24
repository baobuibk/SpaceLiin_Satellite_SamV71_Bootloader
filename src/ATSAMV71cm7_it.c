#include "interrupts.h"
#include "peripheral/systick/plib_systick.h"
#include "peripheral/pio/plib_pio.h"
#include "stdio.h"
#include "OS/Scheduler/scheduler.h"
#include "Tick/tick.h"

/******************************************************************************/
/*            Cortex Processor Interruption and Exception Handlers            */
/******************************************************************************/

/*****************************************************************************/
/*                              Sys-tick Handler                             */
/*****************************************************************************/
static void EX_Systick_Handler(uintptr_t context)
{
    (void)context;
    SCH_RunSystemTickTimer();
    TickTimer_IRQHandler();
}

void EX_SysTick_HandlerRegister(void)
{
    SYSTICK_TimerCallbackSet(EX_Systick_Handler, 0);
}