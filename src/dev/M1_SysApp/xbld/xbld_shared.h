/*
 * xbld_shared.h Shared RAM region between bootloader and application.
 *
 * Persists across software resets (NOT power cycle).
 * Both bootloader and application linker scripts must place this struct
 * at the same fixed RAM address (e.g. a "SharedData" memory region).
 *
 * Usage:
 *   App requests OTA -> write XBLD_MAGIC_STAY_IN_BL, call system_reset()
 *   Bootloader wakes -> sees magic -> stays in BL, waits for upload
 *   After flash       -> bootloader writes XBLD_MAGIC_UPDATE_OK, resets
 *   App wakes         -> sees XBLD_MAGIC_UPDATE_OK -> update succeeded
 */

#ifndef XBLD_SHARED_H
#define XBLD_SHARED_H

#include <stdint.h>
#include "xbld_config.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Magic values */
#define XBLD_MAGIC_NONE         0x00000000UL
#define XBLD_MAGIC_STAY_IN_BL   0xB00710ADUL  /**< App -> BL: enter update   */
#define XBLD_MAGIC_UPDATE_OK    0xF11ADAB1UL  /**< BL  -> App: update done   */
#define XBLD_MAGIC_UPDATE_FAIL  0xDEADBEEFUL  /**< BL  -> App: update failed */

/* Struct */
typedef struct {
    uint32_t magic;        /**< XBLD_MAGIC_* value                          */
    uint32_t error_code;   /**< Bootloader error code (0 = no error)        */
    uint32_t reserved[6];  /**< Reserved, do not use                        */
    /* Total: 32 bytes -> matches SharedData region in linker (LENGTH = 0x20) */
} xBLD_SharedData_t;

/* Access */
#if XBLD_USE_SHARED_DATA

/**
 * Address defined by the linker via the "SharedData" region.
 * Both BL and App linker scripts must place SharedData at the SAME address.
 * Declare in your linker script:
 *   SharedData (rw, NOLOAD) : ORIGIN = 0x20400000, LENGTH = 0x20
 */
extern xBLD_SharedData_t _xbld_shared_data_start;  /* linker symbol */
#define pXBLD_Shared  ((xBLD_SharedData_t *)&_xbld_shared_data_start)

static inline void xBLD_Shared_Clear(void)
{
    pXBLD_Shared->magic      = XBLD_MAGIC_NONE;
    pXBLD_Shared->error_code = 0U;
}

static inline void xBLD_Shared_RequestBootloader(void)
{
    pXBLD_Shared->magic      = XBLD_MAGIC_STAY_IN_BL;
    pXBLD_Shared->error_code = 0U;
}

static inline int xBLD_Shared_IsBootloaderRequested(void)
{
    return (pXBLD_Shared->magic == XBLD_MAGIC_STAY_IN_BL);
}

static inline void xBLD_Shared_SetUpdateOK(void)
{
    pXBLD_Shared->magic = XBLD_MAGIC_UPDATE_OK;
}

static inline void xBLD_Shared_SetUpdateFail(uint32_t err)
{
    pXBLD_Shared->magic      = XBLD_MAGIC_UPDATE_FAIL;
    pXBLD_Shared->error_code = err;
}

#endif /* XBLD_USE_SHARED_DATA */

#ifdef __cplusplus
}
#endif
#endif /* XBLD_SHARED_H */