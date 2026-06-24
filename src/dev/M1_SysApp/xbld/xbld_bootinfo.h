/*
 * xbld_bootinfo.h
 *
 *   Offset  Size  Field
 *   ------  ----  -----
 *   0       2     bcount   – total boot counter LE uint16 (wraps at 65535 -> 0)
 *   2       8     bhistory – ring of last 8 boot-cause codes, [0]=latest
 *                            unused slots filled with 0xFF
 *   10      2     reserved
 *
 *   0x00  Power-On / Brown-Out Reset
 *   0x01  Backup/Wake-up Reset
 *   0x02  Watchdog Reset
 *   0x03  Software Reset
 *   0x04  User Reset (NRST pin)
 *   0xFF  Unknown / slot empty
 *
 * Usage (call once at startup, before any task):
 *   xBLD_BootInfo_Record(&bld_cfg.port);   // read, update, write back
 *   xBLD_BootInfo_Print();                 // dump via XBLD_LOG
 */

#ifndef XBLD_BOOTINFO_H
#define XBLD_BOOTINFO_H

#include <stdint.h>
#include "xbld_port.h"
#include "xbld_config.h"

#ifdef __cplusplus
extern "C" {
#endif

/* -------------------------------------------------------------------------
 * ROM layout
 * -------------------------------------------------------------------------*/
#ifndef XBLD_BOOTINFO_ROM_ADDR
#define XBLD_BOOTINFO_ROM_ADDR   0x000100UL
#endif

#define XBLD_BOOTINFO_HISTORY_LEN  8U  
#define XBLD_BOOTINFO_RECORD_SIZE  12U  

#define XBLD_BOOTCAUSE_UNKNOWN     0xFFU

/* -------------------------------------------------------------------------
 * Structs
 * -------------------------------------------------------------------------*/
#pragma pack(push, 1)
typedef struct {
    uint16_t bcount;   
    uint8_t  bhistory[XBLD_BOOTINFO_HISTORY_LEN];
    uint8_t  reserved[2];
} xBLD_BootInfo_t;
#pragma pack(pop)

#if defined(__GNUC__) || defined(__clang__) || defined(__XC32)
_Static_assert(sizeof(xBLD_BootInfo_t) == XBLD_BOOTINFO_RECORD_SIZE,
               "xBLD_BootInfo_t size mismatch");
#endif

/* -------------------------------------------------------------------------
 * API
 * -------------------------------------------------------------------------*/
void xBLD_BootInfo_Record(const xBLD_Port_t *port, uint8_t cause);
void xBLD_BootInfo_Print(void);
const xBLD_BootInfo_t *xBLD_BootInfo_Get(void);

#ifdef __cplusplus
}
#endif
#endif /* XBLD_BOOTINFO_H */