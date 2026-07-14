/*
 * xbld.h V1.2.0
 *              C.H
 */

#ifndef XBLD_H
#define XBLD_H

#include <stdint.h>
#include <stdbool.h>
#include "xbld_config.h"
#include "xbld_port.h"
#include "xbld_image.h"
#include "xbld_shared.h"

typedef struct xTP_Instance_s  xTP_Instance_t;
typedef struct xCLI_Instance_s xCLI_Instance_t;

#ifdef __cplusplus
extern "C" {
#endif

/* =========================================================================
 * Slot helpers
 * =========================================================================*/
static inline uint32_t xBLD_SlotHdrAddr(uint8_t slot)
{
    return (slot == 1U) ? XBLD_SLOT1_HDR_ADDR : XBLD_SLOT0_HDR_ADDR;
}

static inline uint32_t xBLD_SlotMaxSize(uint8_t slot)
{
    return (slot == 1U) ? XBLD_SLOT1_MAX_SIZE : XBLD_SLOT0_MAX_SIZE;
}

/** Return slot number (0 or 1) for a given flash address, or 0xFF if unknown. */
static inline uint8_t xBLD_AddrToSlot(uint32_t addr)
{
    if (addr >= XBLD_SLOT0_HDR_ADDR &&
        addr <  (XBLD_SLOT0_HDR_ADDR + XBLD_IMAGE_HDR_SIZE + XBLD_SLOT0_MAX_SIZE))
        return 0U;
    if (addr >= XBLD_SLOT1_HDR_ADDR &&
        addr <  (XBLD_SLOT1_HDR_ADDR + XBLD_IMAGE_HDR_SIZE + XBLD_SLOT1_MAX_SIZE))
        return 1U;
    return 0xFFU;
}

/* =========================================================================
 * Types
 * =========================================================================*/
typedef enum {
    XBLD_STATE_IDLE = 0,
    XBLD_STATE_READY,
    XBLD_STATE_WRITING,
    XBLD_STATE_DONE,
    XBLD_STATE_VERIFIED,
    XBLD_STATE_ERROR
} xBLD_State_t;

typedef enum {
    XBLD_OK = 0x00,
    XBLD_ERR,
    XBLD_ERR_STATE,
    XBLD_ERR_ADDR,
    XBLD_ERR_FLASH,
    XBLD_ERR_VERIFY,
    XBLD_ERR_NOT_INIT,
} xBLD_Return_t;

typedef struct {
    xBLD_Port_t      port;
    xTP_Instance_t  *xtp;
    xCLI_Instance_t *xcli;
} xBLD_Config_t;

typedef struct {
    xBLD_Config_t    config;
    xBLD_State_t     state;
    uint32_t         total_written;
    uint8_t          active_slot;    /**< Slot currently targeted by erase/write (0 or 1) */
    uint8_t          initialized;
} xBLD_Instance_t;

/* =========================================================================
 * Public API
 * =========================================================================*/
xBLD_Return_t xBLD_Init(xBLD_Instance_t *inst, const xBLD_Config_t *cfg);

void xBLD_AutobootArm(xBLD_Instance_t *inst);

void xBLD_AutobootPoll(xBLD_Instance_t *inst);

void xBLD_AutobootSignalActivity(xBLD_Instance_t *inst);

xBLD_State_t  xBLD_GetState(const xBLD_Instance_t *inst);
uint32_t      xBLD_GetTotalWritten(const xBLD_Instance_t *inst);
void          xBLD_Reset(xBLD_Instance_t *inst);

void xBLD_WriteHandler(xTP_Instance_t *xtp,
                        const uint8_t *payload, uint16_t len);

#ifdef __cplusplus
}
#endif
#endif /* XBLD_H */