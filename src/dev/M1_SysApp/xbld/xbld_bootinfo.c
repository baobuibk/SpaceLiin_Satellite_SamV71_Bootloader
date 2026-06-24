/*
 * xbld_bootinfo.c 
 */

#include "xbld_bootinfo.h"
#include "xbld_config.h"
#include <string.h>

/* -------------------------------------------------------------------------
 * Module state
 * -------------------------------------------------------------------------*/
static xBLD_BootInfo_t s_info;
static uint8_t         s_ready = 0U;
static const xBLD_Port_t *s_port  = NULL;

/* -------------------------------------------------------------------------
 * Internal helpers
 * -------------------------------------------------------------------------*/
static void push_history(uint8_t cause)
{
    /* Shift [0..N-2] -> [1..N-1]*/
    for (uint8_t i = XBLD_BOOTINFO_HISTORY_LEN - 1U; i > 0U; i--)
        s_info.bhistory[i] = s_info.bhistory[i - 1U];

    s_info.bhistory[0] = cause;   /* [0] = latest */
}

/* -------------------------------------------------------------------------
 * Public API
 * -------------------------------------------------------------------------*/

void xBLD_BootInfo_Record(const xBLD_Port_t *port, uint8_t cause)
{
    s_port = port;
 
    uint8_t raw[XBLD_BOOTINFO_RECORD_SIZE];
 
    if (port != NULL && port->rom_read != NULL &&
        port->rom_read(XBLD_BOOTINFO_ROM_ADDR, raw, sizeof(raw)) == XBLD_PORT_OK)
    {
        memcpy(&s_info, raw, sizeof(s_info));
 
        /* Empty ROM detection: all history 0x00 or 0xFF with bcount==0 */
        uint8_t uninit = 1U;
        for (uint8_t i = 0U; i < XBLD_BOOTINFO_HISTORY_LEN; i++)
        {
            if (s_info.bhistory[i] != 0x00U &&
                s_info.bhistory[i] != 0xFFU) { uninit = 0U; break; }
        }
        if (uninit && s_info.bcount == 0U)
            memset(s_info.bhistory, XBLD_BOOTCAUSE_UNKNOWN, XBLD_BOOTINFO_HISTORY_LEN);
    }
    else
    {
        memset(&s_info, 0, sizeof(s_info));
        memset(s_info.bhistory, XBLD_BOOTCAUSE_UNKNOWN, XBLD_BOOTINFO_HISTORY_LEN);
    }
 
    s_info.bcount++;
    push_history(cause);
 
    memcpy(raw, &s_info, sizeof(s_info));
    if (port != NULL && port->rom_write != NULL)
        port->rom_write(XBLD_BOOTINFO_ROM_ADDR, raw, sizeof(raw));
 
    s_ready = 1U;
}
 
void xBLD_BootInfo_Print(void)
{
    if (!s_ready) { XBLD_LOG("[BOOT] Not recorded yet"); return; }
 
    static const char *cause_str[] = {
        "POR/BOR", "Backup/WakeUp", "Watchdog", "Software", "User(NRST)"
    };
    uint8_t c = s_info.bhistory[0];
    const char *cstr = (c < 5U) ? cause_str[c] : "Unknown";
 
    XBLD_LOG("[BOOT] ---- Boot Info ----");
    XBLD_LOG("[BOOT] Count   : %u (0x%04X)", (unsigned)s_info.bcount, (unsigned)s_info.bcount);
    XBLD_LOG("[BOOT] Cause   : 0x%02X (%s)", (unsigned)c, cstr);
    XBLD_LOG("[BOOT] History : [0]=%02X [1]=%02X [2]=%02X [3]=%02X"
             " [4]=%02X [5]=%02X [6]=%02X [7]=%02X",
             (unsigned)s_info.bhistory[0], (unsigned)s_info.bhistory[1],
             (unsigned)s_info.bhistory[2], (unsigned)s_info.bhistory[3],
             (unsigned)s_info.bhistory[4], (unsigned)s_info.bhistory[5],
             (unsigned)s_info.bhistory[6], (unsigned)s_info.bhistory[7]);
    XBLD_LOG("[BOOT] --------------------");
}
 
const xBLD_BootInfo_t *xBLD_BootInfo_Get(void)
{
    return s_ready ? &s_info : NULL;
}
