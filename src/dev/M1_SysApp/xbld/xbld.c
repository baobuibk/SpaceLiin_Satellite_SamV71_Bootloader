/*
 * xbld.c V1.2.0
 *  V1.1.1:
 *  - Protect read range
 *           C.H
 *  V1.2.0:
 *  - Add xBLD_AutobootSignalActivity() to allow the application to signal
 */

#include "xbld.h"
#include "xtp/xtp.h"
#include "xcli/xcli.h"
#include "xcli/xcli_serial.h"
#include "xbld_bootinfo.h"
#include <string.h>

typedef enum {
    XBLD_ABOOT_SLOT0 = 0,  /* verifying/counting down on the main slot     */
    XBLD_ABOOT_SLOT1,      /* main slot bad; counting down on backup slot  */
    XBLD_ABOOT_HOLD        /* resident: recent activity, or no valid slot  */
} xBLD_AbootPhase_t;

static xBLD_AbootPhase_t  s_aboot_phase        = XBLD_ABOOT_HOLD;
static uint32_t           s_aboot_phase_tick    = 0U;
static int                s_aboot_last_sec      = -1;
static volatile uint8_t   s_aboot_activity      = 0U;
#if XBLD_USE_IMAGE_VERIFY
static xBLD_ImageHeader_t s_aboot_hdr;
#endif

static xBLD_Instance_t *s_xbld = NULL;

/* =========================================================================
 * Internal helpers
 * =========================================================================*/

static void send_write_ack(xBLD_Instance_t *inst, uint32_t addr, uint8_t status)
{
    uint8_t buf[XBLD_WRITE_ACK_LEN];
    memcpy(buf, &addr, 4U);
    buf[4] = status;
    xTP_Send(inst->config.xtp, XBLD_XTP_WRITE_ACK_ID, 0x00, buf, XBLD_WRITE_ACK_LEN);
}

/* =========================================================================
 * xTP write handler
 * Address in frame determines target slot automatically.
 * =========================================================================*/
void xBLD_WriteHandler(xTP_Instance_t *xtp, const uint8_t *payload, uint16_t len)
{
    (void)xtp;
    if (s_xbld == NULL || !s_xbld->initialized) return;
    xBLD_Instance_t *inst = s_xbld;
    xBLD_AutobootSignalActivity(inst);

    if (inst->state != XBLD_STATE_IDLE &&
        inst->state != XBLD_STATE_READY &&
        inst->state != XBLD_STATE_WRITING)
    {
        if (len >= 4U) { uint32_t a; memcpy(&a, payload, 4U); send_write_ack(inst, a, XBLD_WRITE_ACK_ERR); }
        return;
    }
    if (len < XBLD_WRITE_ADDR_SIZE + 1U) return;

    uint32_t addr;
    memcpy(&addr, payload, 4U);
    const uint8_t *data = payload + XBLD_WRITE_ADDR_SIZE;
    uint16_t data_len   = len - XBLD_WRITE_ADDR_SIZE;

    /* Determine slot from address */
    uint8_t slot = xBLD_AddrToSlot(addr);
    if (slot == 0xFFU)
    {
        XBLD_LOG("[xBLD] Write: addr 0x%08X not in any slot", (unsigned)addr);
        send_write_ack(inst, addr, XBLD_WRITE_ACK_ERR);
        return;
    }

    uint32_t slot_end = xBLD_SlotHdrAddr(slot) + XBLD_IMAGE_HDR_SIZE + xBLD_SlotMaxSize(slot);
    if ((addr + data_len) > slot_end)
    {
        XBLD_LOG("[xBLD] Write: overflow slot %u end=0x%08X", (unsigned)slot, (unsigned)slot_end);
        send_write_ack(inst, addr, XBLD_WRITE_ACK_ERR);
        return;
    }

    int ret = inst->config.port.flash_write(addr, data, data_len);
    if (ret != XBLD_PORT_OK)
    {
        send_write_ack(inst, addr, XBLD_WRITE_ACK_ERR);
        inst->state = XBLD_STATE_ERROR;
        return;
    }

    inst->total_written += data_len;
    inst->active_slot    = slot;
    inst->state          = XBLD_STATE_WRITING;
    send_write_ack(inst, addr, XBLD_WRITE_ACK_OK);
}

/* =========================================================================
 * xCLI command handlers
 * =========================================================================*/
struct xCLI_ReqCtx_s;

static void xbld_cmd_ping(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    (void)args;
    if (s_xbld == NULL) return;
    xBLD_AutobootSignalActivity(s_xbld);
    xCLI_Ser_PutStr (&ctx->ser, "lib",    "xBLD");
    xCLI_Ser_PutU8  (&ctx->ser, "hw_id",  XBLD_HW_ID);
    xCLI_Ser_PutU8  (&ctx->ser, "slots",  XBLD_NUM_SLOTS);
    xCLI_Ser_PutU16 (&ctx->ser, "sec_sz", (uint16_t)(XBLD_SECTOR_SIZE > 0xFFFFU ? 0xFFFFU : XBLD_SECTOR_SIZE));
    xCLI_Ser_PutU32 (&ctx->ser, "s0_hdr", XBLD_SLOT0_HDR_ADDR);
    xCLI_Ser_PutU32 (&ctx->ser, "s1_hdr", XBLD_SLOT1_HDR_ADDR);
    xCLI_Ser_PutU32 (&ctx->ser, "s0_max", XBLD_SLOT0_MAX_SIZE);
    xCLI_Ser_PutU32 (&ctx->ser, "s1_max", XBLD_SLOT1_MAX_SIZE);
    xCLI_Ser_PutU16 (&ctx->ser, "hdr_sz", XBLD_IMAGE_HDR_SIZE);
    xCLI_Ser_PutU8  (&ctx->ser, "state",  (uint8_t)s_xbld->state);
    xCLI_Ser_PutU8  (&ctx->ser, "slot",   s_xbld->active_slot);
    xCLI_Ser_PutU8  (&ctx->ser, "wr_max", XBLD_WRITE_DATA_MAX);
    uint32_t bid = s_xbld->config.port.get_board_ident
                   ? s_xbld->config.port.get_board_ident()
                   : 0xFFFFFFFFU;
    xCLI_Ser_PutU32(&ctx->ser, "board_ident", bid);
}

/* berase [slot]  -- slot defaults to 0 */
static void xbld_cmd_erase(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    if (s_xbld == NULL) return;
    xBLD_AutobootSignalActivity(s_xbld);

    uint8_t slot = (uint8_t)xcli_token_u32(args, 1U);
    if (slot >= XBLD_NUM_SLOTS)
    {
        ctx->status = XCLI_STATUS_BAD_ARG;
        xCLI_Ser_PutBool(&ctx->ser, "ok", 0U);
        xCLI_Ser_PutStr (&ctx->ser, "err", "bad slot");
        return;
    }

    uint32_t hdr_addr  = xBLD_SlotHdrAddr(slot);
    uint32_t erase_sz  = XBLD_IMAGE_HDR_SIZE + xBLD_SlotMaxSize(slot);

    XBLD_LOG("[xBLD] Erasing slot %u @ 0x%08X size=0x%08X...",
             (unsigned)slot, (unsigned)hdr_addr, (unsigned)erase_sz);

    int ret = s_xbld->config.port.flash_erase(hdr_addr, erase_sz);
    if (ret != XBLD_PORT_OK)
    {
        ctx->status = XCLI_STATUS_ERR;
        s_xbld->state = XBLD_STATE_ERROR;
        xCLI_Ser_PutBool(&ctx->ser, "ok", 0U);
        return;
    }

    s_xbld->total_written = 0U;
    s_xbld->active_slot   = slot;
    s_xbld->state         = XBLD_STATE_READY;
    xTP_Reset(s_xbld->config.xtp);

    XBLD_LOG("[xBLD] Erase slot %u OK", (unsigned)slot);
    xCLI_Ser_PutBool(&ctx->ser, "ok",   1U);
    xCLI_Ser_PutU8  (&ctx->ser, "slot", slot);
}

/* bverify [slot] -- slot defaults to 0 */
static void xbld_cmd_verify(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    if (s_xbld == NULL) return;
    xBLD_AutobootSignalActivity(s_xbld);

    uint8_t slot = (uint8_t)xcli_token_u32(args, 1U);
    if (slot >= XBLD_NUM_SLOTS)
    {
        ctx->status = XCLI_STATUS_BAD_ARG;
        xCLI_Ser_PutBool(&ctx->ser, "ok", 0U);
        xCLI_Ser_PutStr (&ctx->ser, "err", "bad slot");
        return;
    }

#if XBLD_USE_IMAGE_VERIFY
    xBLD_ImageHeader_t  hdr;
    xBLD_VerifyResult_t result = xBLD_Image_Verify(
        &s_xbld->config.port,
        xBLD_SlotHdrAddr(slot),
        xBLD_SlotMaxSize(slot),
        XBLD_HW_ID, &hdr);

    xCLI_Ser_PutBool(&ctx->ser, "ok",     (uint8_t)(result == XBLD_VERIFY_OK));
    xCLI_Ser_PutU8  (&ctx->ser, "slot",   slot);
    xCLI_Ser_PutStr (&ctx->ser, "result", xBLD_VerifyResultStr(result));
    if (result == XBLD_VERIFY_OK)
    {
        s_xbld->state       = XBLD_STATE_VERIFIED;
        s_xbld->active_slot = slot;
        xCLI_Ser_PutU32(&ctx->ser, "img_sz", hdr.image_size);
        xCLI_Ser_PutU32(&ctx->ser, "crc",    hdr.image_crc32);
    }
    else
    {
        s_xbld->state = XBLD_STATE_ERROR;
    }
#else
    (void)slot;
    xCLI_Ser_PutBool(&ctx->ser, "ok",   1U);
    xCLI_Ser_PutU8  (&ctx->ser, "slot", slot);
    s_xbld->state = XBLD_STATE_VERIFIED;
#endif
}

/* bjump [slot] -- slot defaults to 0 */
static void xbld_cmd_jump(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    if (s_xbld == NULL) return;
    xBLD_AutobootSignalActivity(s_xbld);

    uint8_t slot = (uint8_t)xcli_token_u32(args, 1U);
    if (slot >= XBLD_NUM_SLOTS)
    {
        ctx->status = XCLI_STATUS_BAD_ARG;
        xCLI_Ser_PutBool(&ctx->ser, "ok", 0U);
        xCLI_Ser_PutStr (&ctx->ser, "err", "bad slot");
        return;
    }

#if XBLD_USE_IMAGE_VERIFY
    xBLD_ImageHeader_t  hdr;
    xBLD_VerifyResult_t result = xBLD_Image_Verify(
        &s_xbld->config.port,
        xBLD_SlotHdrAddr(slot),
        xBLD_SlotMaxSize(slot),
        XBLD_HW_ID, &hdr);

    if (result != XBLD_VERIFY_OK)
    {
        ctx->status = XCLI_STATUS_ERR;
        xCLI_Ser_PutBool(&ctx->ser, "ok",  0U);
        xCLI_Ser_PutStr (&ctx->ser, "err", xBLD_VerifyResultStr(result));
        return;
    }
    xCLI_Ser_PutBool(&ctx->ser, "ok",   1U);
    xCLI_Ser_PutU8  (&ctx->ser, "slot", slot);
    s_xbld->config.port.jump_to_app(hdr.entry_addr);
#else
    xCLI_Ser_PutBool(&ctx->ser, "ok",   1U);
    xCLI_Ser_PutU8  (&ctx->ser, "slot", slot);
    s_xbld->config.port.jump_to_app(xBLD_SlotHdrAddr(slot) + XBLD_IMAGE_HDR_SIZE);
#endif
}

static void xbld_cmd_status(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    (void)args;
    if (s_xbld == NULL) return;
    xBLD_AutobootSignalActivity(s_xbld);
    static const char *names[] = {"IDLE","READY","WRITING","DONE","VERIFIED","ERROR"};
    uint8_t st = (uint8_t)s_xbld->state;
    xCLI_Ser_PutU8 (&ctx->ser, "state",   st);
    xCLI_Ser_PutStr(&ctx->ser, "s_name",  (st < 6U) ? names[st] : "?");
    xCLI_Ser_PutU32(&ctx->ser, "written", s_xbld->total_written);
    xCLI_Ser_PutU8 (&ctx->ser, "slot",    s_xbld->active_slot);
}

static void xbld_cmd_read(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    if (s_xbld == NULL) return;
    xBLD_AutobootSignalActivity(s_xbld);
    uint32_t addr = xcli_token_u32(args, 1U);
    uint32_t len  = xcli_token_u32(args, 2U);
    if (addr == 0U) { ctx->status = XCLI_STATUS_BAD_ARG; return; }
    if (len == 0U)  len = 240U;
    if (len > 240U) len = 240U;

    // if (addr < XBLD_FLASH_BASE_ADDR || addr >= XBLD_FLASH_END_ADDR ||
    //     len > (XBLD_FLASH_END_ADDR - addr))
    // {
    //     ctx->status = XCLI_STATUS_BAD_ARG;
    //     xCLI_Ser_PutBool(&ctx->ser, "ok", 0U);
    //     xCLI_Ser_PutStr (&ctx->ser, "err", "addr out of range");
    //     return;
    // }

    uint8_t read_buf[240];
    if (s_xbld->config.port.flash_read(addr, read_buf, len) != XBLD_PORT_OK)
    {
        ctx->status = XCLI_STATUS_ERR;
        xCLI_Ser_PutBool(&ctx->ser, "ok", 0U);
        return;
    }
    xCLI_Ser_PutBool (&ctx->ser, "ok",   1U);
    xCLI_Ser_PutU32  (&ctx->ser, "addr", addr);
    xCLI_Ser_PutU16  (&ctx->ser, "len",  (uint16_t)len);
    xCLI_Ser_PutBytes(&ctx->ser, "data", read_buf, (uint16_t)len);
}

static void xbld_cmd_bcount(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    (void)args;
    if (s_xbld != NULL) xBLD_AutobootSignalActivity(s_xbld);
    const xBLD_BootInfo_t *info = xBLD_BootInfo_Get();
    if (info == NULL) { xCLI_Ser_PutBool(&ctx->ser, "ok", 0U); return; }
    xCLI_Ser_PutBool(&ctx->ser, "ok",    1U);
    xCLI_Ser_PutU16 (&ctx->ser, "count", info->bcount);
}

static void xbld_cmd_bhistory(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    (void)args;
    if (s_xbld != NULL) xBLD_AutobootSignalActivity(s_xbld);
    const xBLD_BootInfo_t *info = xBLD_BootInfo_Get();
    if (info == NULL) { xCLI_Ser_PutBool(&ctx->ser, "ok", 0U); return; }
    xCLI_Ser_PutBool (&ctx->ser, "ok",    1U);
    xCLI_Ser_PutU16  (&ctx->ser, "count", info->bcount);
    xCLI_Ser_PutU8   (&ctx->ser, "len",   (uint8_t)XBLD_BOOTINFO_HISTORY_LEN);
    xCLI_Ser_PutBytes(&ctx->ser, "data",  info->bhistory, (uint16_t)XBLD_BOOTINFO_HISTORY_LEN);
}

/* =========================================================================
 * Init
 * =========================================================================*/
xBLD_Return_t xBLD_Init(xBLD_Instance_t *inst, const xBLD_Config_t *cfg)
{
    if (!inst || !cfg || !cfg->xtp || !cfg->xcli) return XBLD_ERR;
    memset(inst, 0, sizeof(*inst));
    inst->config      = *cfg;
    inst->state       = XBLD_STATE_IDLE;
    inst->active_slot = 0U;
    inst->initialized = 1U;
    s_xbld = inst;

    xTP_RegisterCommand(cfg->xtp, XBLD_XTP_WRITE_ID, xBLD_WriteHandler);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_PING,     "bping",    "xBLD info",          xbld_cmd_ping);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_ERASE,    "berase",   "Erase slot [0|1]",   xbld_cmd_erase);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_VERIFY,   "bverify",  "Verify slot [0|1]",  xbld_cmd_verify);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_JUMP,     "bjump",    "Jump to slot [0|1]", xbld_cmd_jump);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_STATUS,   "bstatus",  "BL state",           xbld_cmd_status);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_READ,     "bread",    "Read flash",         xbld_cmd_read);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_BCOUNT,   "bcount",   "Boot count",         xbld_cmd_bcount);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_BHISTORY, "bhistory", "Boot history", xbld_cmd_bhistory);

    XBLD_LOG("[xBLD] Init OK. slots=%u WR_MAX=%u HDR_SZ=%u",
             (unsigned)XBLD_NUM_SLOTS,
             (unsigned)XBLD_WRITE_DATA_MAX,
             (unsigned)XBLD_IMAGE_HDR_SIZE);
    return XBLD_OK;
}

void xBLD_AutobootSignalActivity(xBLD_Instance_t *inst)
{
    (void)inst;
    s_aboot_activity = 1U;
}

static uint32_t aboot_tick(xBLD_Instance_t *inst)
{
    return inst->config.port.get_tick ? inst->config.port.get_tick() : 0U;
}

/** Enter SLOT0/SLOT1: verify that slot's header, falling through to the
 *  next phase on failure. */
static void aboot_enter(xBLD_Instance_t *inst, xBLD_AbootPhase_t phase)
{
    s_aboot_phase     = phase;
    s_aboot_phase_tick = aboot_tick(inst);
    s_aboot_last_sec  = -1;

#if XBLD_USE_IMAGE_VERIFY
    if (phase == XBLD_ABOOT_SLOT0 || phase == XBLD_ABOOT_SLOT1)
    {
        uint8_t slot = (phase == XBLD_ABOOT_SLOT0) ? 0U : 1U;
    xBLD_VerifyResult_t res = xBLD_Image_Verify(
        &inst->config.port,
        xBLD_SlotHdrAddr(slot),
        xBLD_SlotMaxSize(slot),
            XBLD_HW_ID, &s_aboot_hdr);

    if (res != XBLD_VERIFY_OK)
    {
            XBLD_LOG("[xBLD] Slot %u: verify FAILED (%s)",
                     (unsigned)slot, xBLD_VerifyResultStr(res));
            if (phase == XBLD_ABOOT_SLOT0) { aboot_enter(inst, XBLD_ABOOT_SLOT1); return; }
            XBLD_LOG("[xBLD] Both slots failed - staying in bootloader.");
            aboot_enter(inst, XBLD_ABOOT_HOLD);
            return;
    }

        XBLD_LOG("[xBLD] Slot %u: v%u.%u.%u build=%lu size=%lu crc=0x%08X",
                 (unsigned)slot,
                 s_aboot_hdr.version_major, s_aboot_hdr.version_minor, s_aboot_hdr.version_patch,
                 (unsigned long)s_aboot_hdr.build_number,
                 (unsigned long)s_aboot_hdr.image_size,
                 (unsigned)s_aboot_hdr.image_crc32);
    }
#endif
}

void xBLD_AutobootArm(xBLD_Instance_t *inst)
{
    if (!inst || !inst->initialized) return;

#if XBLD_USE_SHARED_DATA
    if (xBLD_Shared_IsBootloaderRequested())
    {
        xBLD_Shared_Clear();
        XBLD_LOG("[xBLD] BL requested via shared RAM - staying.");
        aboot_enter(inst, XBLD_ABOOT_HOLD);
        return;
    }
#endif
    aboot_enter(inst, XBLD_ABOOT_SLOT0);
}

void xBLD_AutobootPoll(xBLD_Instance_t *inst)
{
    if (!inst || !inst->initialized) return;

    if (s_aboot_activity)
    {
        s_aboot_activity = 0U;
        if (s_aboot_phase == XBLD_ABOOT_HOLD)
        {
            s_aboot_phase_tick = aboot_tick(inst);
        }
        else
    {
            XBLD_LOG("[xBLD] Activity detected - staying BootMode.");
            aboot_enter(inst, XBLD_ABOOT_HOLD);
        }
        return;
    }

    uint32_t elapsed = aboot_tick(inst) - s_aboot_phase_tick;

    switch (s_aboot_phase)
    {
    case XBLD_ABOOT_SLOT0:
    case XBLD_ABOOT_SLOT1:
    {
        uint8_t  slot    = (s_aboot_phase == XBLD_ABOOT_SLOT0) ? 0U : 1U;
        uint32_t timeout = (s_aboot_phase == XBLD_ABOOT_SLOT0)
                          ? XBLD_AUTOBOOT_TIMEOUT_MS : XBLD_BACKUP_BOOT_TIMEOUT_MS;

        if (elapsed < timeout)
        {
            int sec = (int)((timeout - elapsed + 999U) / 1000U);
            if (sec != s_aboot_last_sec)
            {
                s_aboot_last_sec = sec;
                XBLD_LOG("[xBLD] Slot %u booting in %ds...", (unsigned)slot, sec);
            }
            break;
        }

        XBLD_LOG("[xBLD] Jumping to slot %u...", (unsigned)slot);
        inst->state       = XBLD_STATE_VERIFIED;
        inst->active_slot = slot;
#if XBLD_USE_IMAGE_VERIFY
        inst->config.port.jump_to_app(s_aboot_hdr.entry_addr);
#else
        inst->config.port.jump_to_app(xBLD_SlotHdrAddr(slot) + XBLD_IMAGE_HDR_SIZE);
#endif
        break; /* unreachable if jump succeeded */
    }

    case XBLD_ABOOT_HOLD:
    default:
        if (elapsed < XBLD_AUTOBOOT_IDLE_MS)
        {
            int sec = (int)((XBLD_AUTOBOOT_IDLE_MS - elapsed + 999U) / 1000U);
            if (sec != s_aboot_last_sec)
            {
                s_aboot_last_sec = sec;
                XBLD_LOG("[xBLD] BootMode - autoboot retry in %ds...", sec);
            }
            break;
        }

        XBLD_LOG("[xBLD] Idle timeout - retrying autoboot.");
        aboot_enter(inst, XBLD_ABOOT_SLOT0);
        break;
    }
}

/* =========================================================================
 * Accessors
 * =========================================================================*/
xBLD_State_t xBLD_GetState(const xBLD_Instance_t *i)
{
    return i ? i->state : XBLD_STATE_ERROR;
}

uint32_t xBLD_GetTotalWritten(const xBLD_Instance_t *i)
{
    return i ? i->total_written : 0U;
}

void xBLD_Reset(xBLD_Instance_t *i)
{
    if (i) { i->state = XBLD_STATE_IDLE; i->total_written = 0U; }
}