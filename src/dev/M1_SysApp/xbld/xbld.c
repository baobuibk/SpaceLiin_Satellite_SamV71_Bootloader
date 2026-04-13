/*
 * xbld.c - xBLD core: direct QuadWord write per frame
 *
 * Write: [addr 4B LE][data <= 251B] -> flash_write -> WRITE_ACK
 */

#include "xbld.h"
#include "xtp/xtp.h"
#include "xcli/xcli.h"
#include "xcli/xcli_serial.h"
#include <string.h>

static xBLD_Instance_t *s_xbld = NULL;

static void send_write_ack(xBLD_Instance_t *inst, uint32_t addr, uint8_t status)
{
    uint8_t buf[XBLD_WRITE_ACK_LEN];
    memcpy(buf, &addr, 4U);
    buf[4] = status;
    xTP_Send(inst->config.xtp, XBLD_XTP_WRITE_ACK_ID, 0x00, buf, XBLD_WRITE_ACK_LEN);
}

void xBLD_WriteHandler(xTP_Instance_t *xtp, const uint8_t *payload, uint16_t len)
{
    (void)xtp;
    if (s_xbld == NULL || !s_xbld->initialized) return;
    xBLD_Instance_t *inst = s_xbld;

    if (inst->state != XBLD_STATE_IDLE &&
        inst->state != XBLD_STATE_READY &&
        inst->state != XBLD_STATE_WRITING)
    {
        if (len >= 4U) { uint32_t a; memcpy(&a,payload,4U); send_write_ack(inst,a,XBLD_WRITE_ACK_ERR); }
        return;
    }
    if (len < XBLD_WRITE_ADDR_SIZE + 1U) return;

    uint32_t addr; memcpy(&addr, payload, 4U);
    const uint8_t *data = payload + XBLD_WRITE_ADDR_SIZE;
    uint16_t data_len   = len - XBLD_WRITE_ADDR_SIZE;

    if (addr < XBLD_APP_HDR_ADDR ||
        (addr + data_len) > (XBLD_APP_HDR_ADDR + XBLD_IMAGE_HDR_SIZE + XBLD_APP_MAX_SIZE))
    {
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
    inst->state = XBLD_STATE_WRITING;
    send_write_ack(inst, addr, XBLD_WRITE_ACK_OK);
}

/* xCLI handlers */
struct xCLI_ReqCtx_s;

static void xbld_cmd_ping(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    (void)args; if (s_xbld == NULL) return;
    xCLI_Ser_PutStr (&ctx->ser, "lib",    "xBLD");
    xCLI_Ser_PutU8  (&ctx->ser, "hw_id",  XBLD_HW_ID);
    xCLI_Ser_PutU16 (&ctx->ser, "sec_sz", (uint16_t)(XBLD_SECTOR_SIZE > 0xFFFF ? 0xFFFF : XBLD_SECTOR_SIZE));
    xCLI_Ser_PutU32 (&ctx->ser, "hdr",    XBLD_APP_HDR_ADDR);
    xCLI_Ser_PutU32 (&ctx->ser, "max_sz", XBLD_APP_MAX_SIZE);
    xCLI_Ser_PutU16 (&ctx->ser, "hdr_sz", XBLD_IMAGE_HDR_SIZE);
    xCLI_Ser_PutU8  (&ctx->ser, "state",  (uint8_t)s_xbld->state);
    xCLI_Ser_PutU8  (&ctx->ser, "wr_max", XBLD_WRITE_DATA_MAX);
}

static void xbld_cmd_erase(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    (void)args; if (s_xbld == NULL) return;
    XBLD_LOG("[xBLD] Erasing 0x%08X...", (unsigned)XBLD_APP_HDR_ADDR);
    int ret = s_xbld->config.port.flash_erase(XBLD_APP_HDR_ADDR,
                  XBLD_APP_MAX_SIZE + XBLD_IMAGE_HDR_SIZE);
    if (ret != XBLD_PORT_OK) {
        ctx->status = 0x02; s_xbld->state = XBLD_STATE_ERROR;
        xCLI_Ser_PutBool(&ctx->ser, "ok", 0U); return;
    }
    s_xbld->total_written = 0U;
    s_xbld->state = XBLD_STATE_READY;
    xTP_Reset(s_xbld->config.xtp);
    XBLD_LOG("[xBLD] Erase OK");
    xCLI_Ser_PutBool(&ctx->ser, "ok", 1U);
}

static void xbld_cmd_verify(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    (void)args; if (s_xbld == NULL) return;
#if XBLD_USE_IMAGE_VERIFY
    xBLD_ImageHeader_t hdr;
    xBLD_VerifyResult_t result = xBLD_Image_Verify(
        &s_xbld->config.port, XBLD_APP_HDR_ADDR,
        XBLD_APP_MAX_SIZE, XBLD_HW_ID, &hdr);
    xCLI_Ser_PutBool(&ctx->ser, "ok",     (uint8_t)(result == XBLD_VERIFY_OK));
    xCLI_Ser_PutStr (&ctx->ser, "result", xBLD_VerifyResultStr(result));
    if (result == XBLD_VERIFY_OK) {
        s_xbld->state = XBLD_STATE_VERIFIED;
        xCLI_Ser_PutU32(&ctx->ser, "img_sz", hdr.image_size);
        xCLI_Ser_PutU32(&ctx->ser, "crc",    hdr.image_crc32);
    } else {
        s_xbld->state = XBLD_STATE_ERROR;
    }
#else
    xCLI_Ser_PutBool(&ctx->ser, "ok", 1U);
    s_xbld->state = XBLD_STATE_VERIFIED;
#endif
}

static void xbld_cmd_jump(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    (void)args; if (s_xbld == NULL) return;
#if XBLD_USE_IMAGE_VERIFY
    xBLD_ImageHeader_t hdr;
    xBLD_VerifyResult_t result = xBLD_Image_Verify(
        &s_xbld->config.port, XBLD_APP_HDR_ADDR,
        XBLD_APP_MAX_SIZE, XBLD_HW_ID, &hdr);
    if (result != XBLD_VERIFY_OK) {
        ctx->status = 0x02;
        xCLI_Ser_PutBool(&ctx->ser, "ok", 0U);
        xCLI_Ser_PutStr (&ctx->ser, "err", xBLD_VerifyResultStr(result));
        return;
    }
    xCLI_Ser_PutBool(&ctx->ser, "ok", 1U);
    /* port_jump_to_app waits for UART TX flush before disabling IRQ */
    s_xbld->config.port.jump_to_app(hdr.entry_addr);
#else
    xCLI_Ser_PutBool(&ctx->ser, "ok", 1U);
    s_xbld->config.port.jump_to_app(XBLD_APP_START_ADDR);
#endif
}

static void xbld_cmd_status(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    (void)args; if (s_xbld == NULL) return;
    static const char *names[] = {"IDLE","READY","WRITING","DONE","VERIFIED","ERROR"};
    uint8_t st = (uint8_t)s_xbld->state;
    xCLI_Ser_PutU8 (&ctx->ser, "state",  st);
    xCLI_Ser_PutStr(&ctx->ser, "s_name", (st<6U)?names[st]:"?");
    xCLI_Ser_PutU32(&ctx->ser, "written",s_xbld->total_written);
}

static void xbld_cmd_read(struct xCLI_ReqCtx_s *ctx, const char *args)
{
    if (s_xbld == NULL) return;
    uint32_t addr = xcli_token_u32(args, 1U);
    uint32_t len  = xcli_token_u32(args, 2U);
    if (addr == 0U) { ctx->status = 0x03; return; }
    if (len == 0U)  len = 240U;
    if (len > 240U) len = 240U;
    uint8_t read_buf[240];
    if (s_xbld->config.port.flash_read(addr, read_buf, len) != XBLD_PORT_OK) {
        ctx->status = 0x02; xCLI_Ser_PutBool(&ctx->ser, "ok", 0U); return;
    }
    xCLI_Ser_PutBool (&ctx->ser, "ok",   1U);
    xCLI_Ser_PutU32  (&ctx->ser, "addr", addr);
    xCLI_Ser_PutU16  (&ctx->ser, "len",  (uint16_t)len);
    xCLI_Ser_PutBytes(&ctx->ser, "data", read_buf, (uint16_t)len);
}

/* Init */
xBLD_Return_t xBLD_Init(xBLD_Instance_t *inst, const xBLD_Config_t *cfg)
{
    if (!inst || !cfg || !cfg->xtp || !cfg->xcli) return XBLD_ERR;
    memset(inst, 0, sizeof(*inst));
    inst->config = *cfg;
    inst->state  = XBLD_STATE_IDLE;
    inst->initialized = 1U;
    s_xbld = inst;

    xTP_RegisterCommand(cfg->xtp, XBLD_XTP_WRITE_ID, xBLD_WriteHandler);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_PING,   "bping",   "xBLD info",   xbld_cmd_ping);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_ERASE,  "berase",  "Erase app",   xbld_cmd_erase);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_VERIFY, "bverify", "Verify CRC",  xbld_cmd_verify);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_JUMP,   "bjump",   "Jump to app", xbld_cmd_jump);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_STATUS, "bstatus", "BL state",    xbld_cmd_status);
    xCLI_RegisterCommand(cfg->xcli, XBLD_CMD_READ,   "bread",   "Read flash",  xbld_cmd_read);

    XBLD_LOG("[xBLD] Init OK. WR_MAX=%u HDR_SZ=%u",
             (unsigned)XBLD_WRITE_DATA_MAX, (unsigned)XBLD_IMAGE_HDR_SIZE);
    return XBLD_OK;
}

bool xBLD_TryAutoboot(xBLD_Instance_t *inst)
{
    if (!inst || !inst->initialized) return false;
#if XBLD_USE_SHARED_DATA
    if (xBLD_Shared_IsBootloaderRequested()) { xBLD_Shared_Clear(); return false; }
#endif
#if XBLD_USE_IMAGE_VERIFY
    xBLD_ImageHeader_t hdr;
    if (xBLD_Image_Verify(&inst->config.port, XBLD_APP_HDR_ADDR,
                           XBLD_APP_MAX_SIZE, XBLD_HW_ID, &hdr) == XBLD_VERIFY_OK)
    { inst->config.port.jump_to_app(hdr.entry_addr); return true; }
#endif
    return false;
}

xBLD_State_t xBLD_GetState(const xBLD_Instance_t *i) { return i ? i->state : XBLD_STATE_ERROR; }
uint32_t xBLD_GetTotalWritten(const xBLD_Instance_t *i) { return i ? i->total_written : 0U; }
void xBLD_Reset(xBLD_Instance_t *i) { if(i){i->state=XBLD_STATE_IDLE;i->total_written=0U;} }
/*----------------------------------------------*/
/* Autoboot */
/*----------------------------------------------*/
static volatile uint8_t s_keypress_flag = 0U;
void xBLD_SignalKeypress(xBLD_Instance_t *inst)
{
    (void)inst;
    s_keypress_flag = 1U;
}

bool xBLD_AutobootRun(xBLD_Instance_t *inst)
{
    if (!inst || !inst->initialized) return false;

#if XBLD_USE_SHARED_DATA
    // if (xBLD_Shared_IsBootloaderRequested()) {
    //     xBLD_Shared_Clear();
    //     XBLD_LOG("[xBLD] BL requested via shared RAM.");
    //     return false;
    // }
#endif

#if XBLD_USE_IMAGE_VERIFY
    xBLD_ImageHeader_t hdr;
    xBLD_VerifyResult_t res = xBLD_Image_Verify(
        &inst->config.port, XBLD_APP_HDR_ADDR,
        XBLD_APP_MAX_SIZE, XBLD_HW_ID, &hdr);

    if (res != XBLD_VERIFY_OK) {
        XBLD_LOG("[xBLD] No valid image (%s). Staying.", xBLD_VerifyResultStr(res));
        return false;
    }

    XBLD_LOG("[xBLD] Found v%u.%u.%u build=%lu size=%lu crc=0x%08X",
             hdr.version_major, hdr.version_minor, hdr.version_patch,
             (unsigned long)hdr.build_number,
             (unsigned long)hdr.image_size,
             (unsigned)hdr.image_crc32);
#endif

    s_keypress_flag = 0U;

    const uint32_t poll_ms  = XBLD_AUTOBOOT_POLL_MS;
    const uint32_t total_ms = (uint32_t)XBLD_AUTOBOOT_TIMEOUT_S * 1000U;
    uint32_t elapsed_ms = 0U;
    int last_sec = -1;

    while (elapsed_ms < total_ms)
    {
        int sec = (int)((total_ms - elapsed_ms + 999U) / 1000U);
        if (sec != last_sec) {
            XBLD_LOG("[xBLD] Hit any key to stop autoboot... %d", sec);
            last_sec = sec;
        }

        if (s_keypress_flag) {
            XBLD_LOG("[xBLD] Aborted by user.");
            return false;
        }

        if (inst->config.port.get_tick) {
            uint32_t t0 = inst->config.port.get_tick();
            while ((inst->config.port.get_tick() - t0) < poll_ms) {
                if (inst->config.port.poll_fn)
                    inst->config.port.poll_fn();
                if (s_keypress_flag) {
                    XBLD_LOG("[xBLD] Aborted by user.");
                    return false;
                }
            }
        }

        elapsed_ms += poll_ms;
    }

    XBLD_LOG("[xBLD] Booting...");
    inst->state = XBLD_STATE_VERIFIED;

#if XBLD_USE_IMAGE_VERIFY
    inst->config.port.jump_to_app(hdr.entry_addr);
#else
    inst->config.port.jump_to_app(XBLD_APP_START_ADDR);
#endif
    return true;
}