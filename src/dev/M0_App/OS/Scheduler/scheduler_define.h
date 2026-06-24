#ifndef SCHEDULER_DEFINE_H_
#define SCHEDULER_DEFINE_H_

/* =========================================================
 * Pool sizes — adjust to your application needs
 * ========================================================= */
#define MAX_TASK                        16
#define MAX_TIMERS                      8

/* =========================================================
 * Feature flags
 * ========================================================= */
// #define USE_SCH_SEMAPHORE

#ifdef USE_SCH_SEMAPHORE
#define MAX_SEMAPHORES                  4
#endif

/* =========================================================
 * Soft timer slots
 * Add new timers before SCH_TIM_LAST — do not remove LAST
 * ========================================================= */
typedef enum SCH_SoftTimerTypedef
{
    SCH_TIM_FIRST = 0,
    SCH_TIM_LED   = SCH_TIM_FIRST,  ///< Soft timer for LED control.
    SCH_TIM_WDT,                    ///< Soft timer for watchdog kick.
    /* SCH_TIM_YOUR_TIMER, */        ///< Add new timers here.
    SCH_TIM_LAST                    ///< End marker — always keep last.
} SCH_SoftTimerTypedef;

#endif /* SCHEDULER_DEFINE_H_ */