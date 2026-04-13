/*
 * xbld.h - xBLD: eXtensible Bootloader library over xTP/xCLI
 *
 * Write: each xTP frame = [addr 4B][data <= 251B] -> QuadWord write -> WRITE_ACK
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
    uint8_t          initialized;
} xBLD_Instance_t;

xBLD_Return_t xBLD_Init(xBLD_Instance_t *inst, const xBLD_Config_t *cfg);
bool          xBLD_TryAutoboot(xBLD_Instance_t *inst);
xBLD_State_t  xBLD_GetState(const xBLD_Instance_t *inst);
uint32_t      xBLD_GetTotalWritten(const xBLD_Instance_t *inst);
void          xBLD_Reset(xBLD_Instance_t *inst);

void xBLD_SignalKeypress(xBLD_Instance_t *inst);
bool xBLD_AutobootRun(xBLD_Instance_t *inst);
void xBLD_WriteHandler(xTP_Instance_t *xtp,
                        const uint8_t *payload, uint16_t len);

#ifdef __cplusplus
}
#endif
#endif /* XBLD_H */