/*
 * xbld_port.h 
 */

#ifndef XBLD_PORT_H
#define XBLD_PORT_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

#define XBLD_PORT_OK    0
#define XBLD_PORT_ERR  -1

typedef struct {
    int      (*flash_init)(void);
    int      (*flash_erase)(uint32_t addr, uint32_t size);
    int      (*flash_write)(uint32_t addr, const uint8_t *data, uint32_t len);
    int      (*flash_read)(uint32_t addr, uint8_t *data, uint32_t len);
    uint32_t (*get_tick)(void);
    uint8_t  (*get_boot_cause)(void);
    int      (*rom_read) (uint32_t addr, uint8_t *data,       uint32_t len);
    int      (*rom_write)(uint32_t addr, const uint8_t *data, uint32_t len);
    void     (*system_reset)(void);
    void     (*jump_to_app)(uint32_t app_vector_addr);
    void     (*poll_fn)(void);
    uint32_t (*get_board_ident)(void); 
} xBLD_Port_t;
void xBLD_Peripheral_DeInit(void);
xBLD_Port_t xBLD_GetDefaultPort(void);
void xBLD_ForceJump(uint32_t app_vector_addr);

#ifdef __cplusplus
}
#endif
#endif /* XBLD_PORT_H */