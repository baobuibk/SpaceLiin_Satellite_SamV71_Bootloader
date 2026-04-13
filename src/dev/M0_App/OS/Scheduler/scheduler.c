/* Standard Includes ---------------------------------------------------------*/
#include "scheduler.h"
#include "string.h"

#ifndef SET
#define SET     1U
#endif
#ifndef RESET
#define RESET   0U
#endif

/* Private typedef -----------------------------------------------------------*/
/**
 * @brief Runtime context for a task.
 */
typedef struct SCH_TaskContextTypedef
{
    SCH_TaskStateTypedef  taskState;    ///< Current state of the task.
    uint32_t              currentTick;  ///< Runtime tick counter.
    SCH_TaskPropertyTypedef taskProperty;
} SCH_TaskContextTypedef;

/**
 * @brief Runtime context for an event timer.
 */
typedef struct SCH_TimerContextTypedef
{
    SCH_TimerStateTypedef  timerState;   ///< Current state of the timer.
    uint32_t               currentTick;  ///< Runtime tick counter.
    SCH_TimerPropertyTypedef timerProperty;
} SCH_TimerContextTypedef;

/* Private variables ---------------------------------------------------------*/
static uint8_t  s_SchedulerRunning = FALSE;

static SCH_TaskContextTypedef  s_TaskContext[MAX_TASK];
static uint8_t                 s_NumOfTaskScheduled;

static SCH_TimerContextTypedef s_TimerContext[MAX_TIMERS];
static uint8_t                 s_NumOfTimers;

#ifdef USE_SCH_SEMAPHORE
static SCH_SemaphoreTypedef    s_SemaphoreContext[MAX_SEMAPHORES];
static uint8_t                 s_NumOfSemaphores;
#endif

static volatile uint32_t s_TaskPending[NUM_TASK_PENDING_ARRAYS]   = {0};
static volatile uint32_t s_TimerPending[NUM_TIMER_PENDING_ARRAYS] = {0};

static volatile uint32_t s_SystemTick;
static volatile uint32_t s_SoftTimers[SCH_TIM_LAST];

/* Private function prototypes -----------------------------------------------*/
static SCH_TaskContextTypedef *SCH_TASK_GetTaskContext(SCH_TASK_HANDLE taskHandle);

/* Public functions ----------------------------------------------------------*/

/*******************************************************************************
 * @brief  Initialize scheduler — call once before SCH_StartScheduler.
 ******************************************************************************/
void SCH_Initialize(void)
{
    s_SystemTick         = RESET;
    s_NumOfTaskScheduled = RESET;
    s_NumOfTimers        = RESET;

#ifdef USE_SCH_SEMAPHORE
    s_NumOfSemaphores = RESET;
#endif

    s_SchedulerRunning = FALSE;

    memset(s_TaskContext,   RESET, sizeof(s_TaskContext));
    memset(s_TimerContext,  RESET, sizeof(s_TimerContext));
    memset((void *)s_SoftTimers,    RESET, sizeof(s_SoftTimers));
    memset((void *)s_TaskPending,   RESET, sizeof(s_TaskPending));
    memset((void *)s_TimerPending,  RESET, sizeof(s_TimerPending));

#ifdef USE_SCH_SEMAPHORE
    memset(s_SemaphoreContext, RESET, sizeof(s_SemaphoreContext));
#endif
}

/*******************************************************************************
 * @brief  Start soft timer (countdown in ms, decremented in ISR).
 ******************************************************************************/
void SCH_TIM_Start(const SCH_SoftTimerTypedef timer, const uint32_t timeInMs)
{
    if (timer < SCH_TIM_LAST)
    {
        s_SoftTimers[timer] = timeInMs;
    }
}

/*******************************************************************************
 * @brief  Returns TRUE when soft timer has counted down to zero.
 ******************************************************************************/
uint8_t SCH_TIM_isCompleted(const SCH_SoftTimerTypedef timer)
{
    return (s_SoftTimers[timer] == 0);
}

/*******************************************************************************
 * @brief  Resume a suspended task.
 ******************************************************************************/
SCH_Status SCH_TASK_ResumeTask(SCH_TASK_HANDLE taskIndex)
{
    if (taskIndex >= s_NumOfTaskScheduled) return SCH_ERROR;

    s_TaskContext[taskIndex].taskState = TASK_StateReady;
    return SCH_DONE;
}

/*******************************************************************************
 * @brief  Stop (suspend) a running task.
 ******************************************************************************/
SCH_Status SCH_TASK_StopTask(SCH_TASK_HANDLE taskIndex)
{
    if (taskIndex >= s_NumOfTaskScheduled) return SCH_ERROR;

    s_TaskContext[taskIndex].taskState = TASK_StateHold;
    return SCH_DONE;
}

/*******************************************************************************
 * @brief  Create and register a task. Returns handle via pHandle.
 ******************************************************************************/
 SCH_Status SCH_TASK_CreateTask(SCH_TASK_HANDLE *pHandle, SCH_TaskPropertyTypedef *pTaskProperty)
{
    if (pHandle == NULL || pTaskProperty == NULL) return SCH_ERROR;
    if (s_NumOfTaskScheduled >= MAX_TASK)         return SCH_ERROR;

    SCH_TaskContextTypedef *pCtx = &s_TaskContext[s_NumOfTaskScheduled];
    memcpy(&pCtx->taskProperty, pTaskProperty, sizeof(SCH_TaskPropertyTypedef));
    pCtx->currentTick = 0;
    pCtx->taskState   = (pTaskProperty->taskType == SCH_TASK_ASYNC)
                        ? TASK_StateHold : TASK_StateReady;

    *pHandle = s_NumOfTaskScheduled;
    s_NumOfTaskScheduled++;
    return SCH_DONE;
}

/*******************************************************************************
 * @brief  Trigger an ASYNC task to run once.
 *         Safe to call from ISR.
 ******************************************************************************/
SCH_Status SCH_TASK_TriggerAsync(SCH_TASK_HANDLE taskIndex)
{
    if (taskIndex >= s_NumOfTaskScheduled) return SCH_ERROR;

    SCH_TaskContextTypedef *pCtx = &s_TaskContext[taskIndex];
    if (pCtx->taskProperty.taskType != SCH_TASK_ASYNC) return SCH_ERROR;

    uint8_t index = taskIndex / 32;
    uint8_t bit   = taskIndex % 32;
    s_TaskPending[index] |= (1u << bit);
    pCtx->taskState = TASK_StateReady;
    return SCH_DONE;
}

/*******************************************************************************
 * @brief  Create an event timer (MONO or PERIODIC).
 *         Timer is created in stopped state — call SCH_TIM_RestartTimer to start.
 ******************************************************************************/
SCH_Status SCH_TIM_CreateTimer(SCH_TIMER_HANDLE *pHandle, SCH_TimerPropertyTypedef *pTimerProperty)
{
    if (pHandle == NULL || pTimerProperty == NULL) return SCH_ERROR;
    if (s_NumOfTimers >= MAX_TIMERS)               return SCH_ERROR;

    SCH_TimerContextTypedef *pCtx = &s_TimerContext[s_NumOfTimers];
    memcpy(&pCtx->timerProperty, pTimerProperty, sizeof(SCH_TimerPropertyTypedef));
    pCtx->currentTick = 0;
    pCtx->timerState  = TIM_StateStop;

    *pHandle = s_NumOfTimers;
    s_NumOfTimers++;
    return SCH_DONE;
}

/*******************************************************************************
 * @brief  Start or restart an event timer.
 ******************************************************************************/
SCH_Status SCH_TIM_RestartTimer(SCH_TIMER_HANDLE timerIndex)
{
    if (timerIndex >= s_NumOfTimers) return SCH_ERROR;

    s_TimerContext[timerIndex].currentTick = RESET;
    s_TimerContext[timerIndex].timerState  = TIM_StateRun;
    return SCH_DONE;
}

/*******************************************************************************
 * @brief  Stop an event timer.
 ******************************************************************************/
SCH_Status SCH_TIM_StopTimer(SCH_TIMER_HANDLE timerIndex)
{
    if (timerIndex >= s_NumOfTimers) return SCH_ERROR;

    s_TimerContext[timerIndex].timerState = TIM_StateStop;
    return SCH_DONE;
}

/*******************************************************************************
 * @brief  Called from SysTick ISR every 1 ms.
 *         Increments tick counters and sets pending bits.
 ******************************************************************************/
void SCH_RunSystemTickTimer(void)
{
    if (!s_SchedulerRunning) return;

    s_SystemTick++;

    /* Tasks */
    for (uint8_t i = 0; i < s_NumOfTaskScheduled; i++)
    {
        SCH_TaskContextTypedef *pCtx = &s_TaskContext[i];
        if (pCtx->taskProperty.taskType  != SCH_TASK_SYNC)   continue;
        if (pCtx->taskState              != TASK_StateReady)  continue;

        pCtx->currentTick++;
        if (pCtx->currentTick >= pCtx->taskProperty.taskPeriodInMS)
        {
            pCtx->currentTick = 0;
            s_TaskPending[i / 32] |= (1u << (i % 32));
        }
    }

    /* Event timers */
    for (uint8_t i = 0; i < s_NumOfTimers; i++)
    {
        SCH_TimerContextTypedef *pCtx = &s_TimerContext[i];
        if (pCtx->timerState != TIM_StateRun) continue;

        pCtx->currentTick++;
        if (pCtx->currentTick >= pCtx->timerProperty.timerPeriodInMS)
        {
            s_TimerPending[i / 32] |= (1u << (i % 32));
            pCtx->currentTick = 0;
            pCtx->timerState  = (pCtx->timerProperty.timerType == SCH_TIMER_PERIODIC)
                                 ? TIM_StateRun : TIM_StateStop;
        }
    }

    /* Soft timers */
    for (uint8_t i = 0; i < SCH_TIM_LAST; i++)
    {
        if (s_SoftTimers[i] > 0) s_SoftTimers[i]--;
    }
}

/*******************************************************************************
 * @brief  Start scheduler.
 ******************************************************************************/
void SCH_StartScheduler(void)
{
    s_SchedulerRunning = TRUE;
}

/*******************************************************************************
 * @brief  Stop scheduler and reset all context.
 ******************************************************************************/
void SCH_StopScheduler(void)
{
    s_SchedulerRunning = FALSE;

    memset(s_TaskContext,  RESET, sizeof(s_TaskContext));
    memset(s_TimerContext, RESET, sizeof(s_TimerContext));
    memset((void *)s_SoftTimers,   RESET, sizeof(s_SoftTimers));
    memset((void *)s_TaskPending,  RESET, sizeof(s_TaskPending));
    memset((void *)s_TimerPending, RESET, sizeof(s_TimerPending));

#ifdef USE_SCH_SEMAPHORE
    memset(s_SemaphoreContext, RESET, sizeof(s_SemaphoreContext));
#endif
}

/*******************************************************************************
 * @brief  Dispatch pending tasks and timers. Call from main loop.
 *         Tasks are dispatched highest priority first (PRIO_3 → PRIO_0).
 ******************************************************************************/
void SCH_HandleScheduledTask(void)
{
    if (!s_SchedulerRunning) return;

    /* Tasks — highest priority first */
    for (int8_t prio = SCH_TASK_PRIO_3; prio >= SCH_TASK_PRIO_0; prio--)
    {
        for (uint8_t idx = 0; idx < NUM_TASK_PENDING_ARRAYS; idx++)
        {
            uint32_t pending = s_TaskPending[idx];
            for (uint8_t bit = 0; bit < 32; bit++)
            {
                if (!(pending & (1u << bit))) continue;

                uint8_t taskIdx = (uint8_t)(idx * 32 + bit);
                if (taskIdx >= s_NumOfTaskScheduled) continue;

                SCH_TaskContextTypedef *pCtx = &s_TaskContext[taskIdx];
                if ((int8_t)pCtx->taskProperty.taskPriority != prio) continue;
                if (pCtx->taskState != TASK_StateReady)               continue;

                s_TaskPending[idx] &= ~(1u << bit);
                pCtx->taskProperty.taskFunction();

                if (pCtx->taskProperty.taskType == SCH_TASK_ASYNC)
                {
                    pCtx->taskState = TASK_StateHold;
                }
            }
        }
    }

    /* Event timers */
    for (uint8_t idx = 0; idx < NUM_TIMER_PENDING_ARRAYS; idx++)
    {
        uint32_t pending = s_TimerPending[idx];
        for (uint8_t bit = 0; bit < 32; bit++)
        {
            if (!(pending & (1u << bit))) continue;

            uint8_t timerIdx = (uint8_t)(idx * 32 + bit);
            if (timerIdx >= s_NumOfTimers) continue;

            s_TimerPending[idx] &= ~(1u << bit);
            SCH_TimerContextTypedef *pCtx = &s_TimerContext[timerIdx];
            if (pCtx->timerProperty.timerCallbackFunction)
            {
                pCtx->timerProperty.timerCallbackFunction();
            }
        }
    }
}

/*******************************************************************************
 * @brief  Return current system tick count.
 ******************************************************************************/
uint32_t SCH_SystemTick(void)
{
    return s_SystemTick;
}

/* Private functions ---------------------------------------------------------*/
static SCH_TaskContextTypedef *SCH_TASK_GetTaskContext(SCH_TASK_HANDLE taskHandle)
{
    if (taskHandle < MAX_TASK)
        return &s_TaskContext[taskHandle];
    return NULL;
}

/* Semaphore -----------------------------------------------------------------*/
#ifdef USE_SCH_SEMAPHORE

SCH_Status SCH_Semaphore_Create(SCH_SEMAPHORE_HANDLE *pHandle, uint8_t initialValue)
{
    if (pHandle == NULL)                    return SCH_ERROR;
    if (s_NumOfSemaphores >= MAX_SEMAPHORES) return SCH_ERROR;

    s_SemaphoreContext[s_NumOfSemaphores].value = initialValue;
    *pHandle = s_NumOfSemaphores;
    s_NumOfSemaphores++;
    return SCH_DONE;
}

SCH_Status SCH_Semaphore_Take(SCH_SEMAPHORE_HANDLE semHandle)
{
    if (semHandle >= s_NumOfSemaphores)          return SCH_ERROR;
    if (s_SemaphoreContext[semHandle].value == 0) return SCH_ERROR;

    s_SemaphoreContext[semHandle].value--;
    return SCH_DONE;
}

SCH_Status SCH_Semaphore_Give(SCH_SEMAPHORE_HANDLE semHandle)
{
    if (semHandle >= s_NumOfSemaphores)          return SCH_ERROR;
    if (s_SemaphoreContext[semHandle].value >= 1) return SCH_ERROR;

    s_SemaphoreContext[semHandle].value++;
    return SCH_DONE;
}

#endif /* USE_SCH_SEMAPHORE */