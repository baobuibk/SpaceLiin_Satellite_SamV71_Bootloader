/************************************************
 *  @file     : usart_spi_polling.h
 *  @date     : May, 2026
 *  @author   : CAO HIEU
 *-----------------------------------------------
 ************************************************/
#ifndef USART_SPI_POLLING_H
#define USART_SPI_POLLING_H

#ifdef __cplusplus
extern "C" {
#endif

/*************************************************
 *                  INCLUDES                     *
 *************************************************/
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include "device.h"
#include "Define/define.h"   

/*************************************************
 *              CONFIGURATION                    *
 *************************************************/
#define USART_SPI_DRIVER_COUNT      (1U)
#define USART_SPI_TIMEOUT_MS        (10U)

/*************************************************
 *              TYPE DEFINITIONS                 *
 *************************************************/
typedef struct
{
    usart_registers_t  *usart;         
    uint32_t            timeout_ms;     

    /* Statistics */
    volatile uint32_t   tx_error_count;
    volatile uint32_t   rx_error_count;
} USART_SPI_Driver_t;

/*************************************************
 *              PUBLIC API                       *
 *************************************************/
Std_ReturnType USART_SPI_Driver_Init(void);

/* ---- Single byte / word ---- */

/**
 * @brief  Transmit 1 byte, optionally capture received byte.
 * @param  usart         USART peripheral registers (e.g. USART2_REGS)
 * @param  data          Byte to send
 * @param  receivedData  Destination for received byte (NULL = discard)
 * @return E_OK | E_TIMEOUT | E_ERROR
 */
Std_ReturnType USART_SPI_Transmit8(usart_registers_t *usart,
                                    uint8_t  data,
                                    uint8_t *receivedData);

/**
 * @brief  Transmit 16-bit word (2 x 8-bit frames, MSB first).
 * @param  usart         USART peripheral registers
 * @param  data          Word to send
 * @param  receivedData  Destination for received word (NULL = discard)
 * @return E_OK | E_TIMEOUT | E_ERROR
 */
Std_ReturnType USART_SPI_Transmit16(usart_registers_t *usart,
                                     uint16_t  data,
                                     uint16_t *receivedData);

/**
 * @brief  Transmit 1 byte, discard received byte.
 * @return E_OK | E_TIMEOUT | E_ERROR
 */
Std_ReturnType USART_SPI_Write(usart_registers_t *usart, uint8_t data);

/* ---- Buffer transfers ---- */

/**
 * @brief  Full-duplex buffer transfer.
 *         - If txSize < rxSize: dummy 0xFF bytes are sent to clock in RX data.
 *         - Either pointer may be NULL (TX-only or RX-only).
 * @param  usart          USART peripheral registers
 * @param  pTransmitData  TX buffer (NULL = send 0xFF for every byte)
 * @param  txSize         Number of TX bytes
 * @param  pReceiveData   RX buffer (NULL = discard received data)
 * @param  rxSize         Number of RX bytes expected
 * @return E_OK | E_TIMEOUT | E_ERROR
 */
Std_ReturnType USART_SPI_WriteRead(usart_registers_t *usart,
                                    const uint8_t *pTransmitData, size_t txSize,
                                    uint8_t       *pReceiveData,  size_t rxSize);

/**
 * @brief  Transmit array of bytes (TX-only, all received bytes discarded).
 * @return E_OK | E_TIMEOUT | E_ERROR
 */
Std_ReturnType USART_SPI_TransmitArray(usart_registers_t *usart,
                                        const uint8_t *data, size_t size);

/**
 * @brief  Receive array of bytes (dummy 0xFF transmitted for each byte).
 * @return E_OK | E_TIMEOUT | E_ERROR
 */
Std_ReturnType USART_SPI_ReceiveArray(usart_registers_t *usart,
                                       uint8_t *pReceiveData, size_t size);

/* ---- Status ---- */

/**
 * @brief  Returns true while the TX shift register still has data.
 */
bool USART_SPI_IsBusy(usart_registers_t *usart);

/**
 * @brief  Block until TX shift register is empty or timeout expires.
 * @param  timeout_ms  0 = wait forever
 * @return true = done, false = timeout
 */
bool USART_SPI_WaitTxComplete(usart_registers_t *usart, uint32_t timeout_ms);

/* ---- Statistics ---- */

uint32_t USART_SPI_GetTxErrorCount(usart_registers_t *usart);
uint32_t USART_SPI_GetRxErrorCount(usart_registers_t *usart);
void     USART_SPI_ClearErrorCounts(usart_registers_t *usart);

/*************************************************
 *************************************************/
#define USART2_SPID_Transmit8(data, rx)             USART_SPI_Transmit8(USART2_REGS, (data), (rx))
#define USART2_SPID_Transmit16(data, rx)            USART_SPI_Transmit16(USART2_REGS, (data), (rx))
#define USART2_SPID_Write(data)                     USART_SPI_Write(USART2_REGS, (data))
#define USART2_SPID_WriteRead(tx,txsz,rx,rxsz)      USART_SPI_WriteRead(USART2_REGS, (tx),(txsz),(rx),(rxsz))
#define USART2_SPID_TransmitArray(buf, sz)          USART_SPI_TransmitArray(USART2_REGS, (buf), (sz))
#define USART2_SPID_ReceiveArray(buf, sz)           USART_SPI_ReceiveArray(USART2_REGS, (buf), (sz))
#define USART2_SPID_IsBusy()                        USART_SPI_IsBusy(USART2_REGS)
#define USART2_SPID_WaitTxComplete(ms)              USART_SPI_WaitTxComplete(USART2_REGS, (ms))

#ifdef __cplusplus
}
#endif

#endif /* USART_SPI_POLLING_H */