/*
 * wd_tpl5010.c
 */

#include "wd_tpl5010.h"
#include "definitions.h"     

static Watchdog_StateEnum currentState = WATCHDOG_STATE_LOW;

Std_ReturnType Watchdog_Device_Init(void)
{
    currentState = WATCHDOG_STATE_LOW;
    WD_PE1_Clear();    
    return E_OK;
}

void Watchdog_Device_Update(void)
{
    if (currentState == WATCHDOG_STATE_LOW)
    {
        currentState = WATCHDOG_STATE_HIGH;
        WD_PE1_Set(); 
    }
    else
    {
        currentState = WATCHDOG_STATE_LOW;
        WD_PE1_Clear();    
    }
}

Watchdog_StateEnum Watchdog_Device_GetState(void)
{
    return currentState;
}