/************************************************
 *  @file     : usart_spi_polling.c
 *  @date     : May, 2026
 *  @author   : CAO HIEU
 *-----------------------------------------------
 ************************************************/
#include "usart_spi_polling.h"
#include "peripheral/usart/plib_usart2_spi.h"
#include "Tick/tick.h"   /* Utils_GetTick() */

/*************************************************
 *              DRIVER TABLE                     *
 *************************************************/
static USART_SPI_Driver_t usart_spi_drivers[USART_SPI_DRIVER_COUNT] = {
    /* [0] USART2 in SPI Master mode */
    {
        .usart          = USART2_REGS,
        .timeout_ms     = USART_SPI_TIMEOUT_MS,
        .tx_error_count = 0U,
        .rx_error_count = 0U
    },
    /*
    {
        .usart          = USART0_REGS,
        .timeout_ms     = USART_SPI_TIMEOUT_MS,
        .tx_error_count = 0U,
        .rx_error_count = 0U
    },
    */
};

/*************************************************
 *              FORWARD DECLARATIONS             *
 *************************************************/
static USART_SPI_Driver_t* USART_SPI_Driver_Get(usart_registers_t *usart);

/*************************************************
 *              PRIVATE HELPERS                  *
 *************************************************/
static inline uint32_t USART_SPI_GetTick(void)
{
    return Utils_GetTick();
}

static bool USART_SPI_WaitTXRDY(USART_SPI_Driver_t *d)
{
    uint32_t start = USART_SPI_GetTick();

    while ((d->usart->US_CSR & US_CSR_SPI_TXRDY_Msk) == 0U)
    {
        if ((USART_SPI_GetTick() - start) >= d->timeout_ms)
        {
            d->tx_error_count++;
            return false;
        }
    }
    return true;
}

static bool USART_SPI_WaitRXRDY(USART_SPI_Driver_t *d)
{
    uint32_t start = USART_SPI_GetTick();

    while ((d->usart->US_CSR & US_CSR_SPI_RXRDY_Msk) == 0U)
    {
        if ((USART_SPI_GetTick() - start) >= d->timeout_ms)
        {
            d->rx_error_count++;
            return false;
        }
    }
    return true;
}

static bool USART_SPI_WaitTXEMPTY(USART_SPI_Driver_t *d)
{
    uint32_t start = USART_SPI_GetTick();

    while ((d->usart->US_CSR & US_CSR_SPI_TXEMPTY_Msk) == 0U)
    {
        if ((USART_SPI_GetTick() - start) >= d->timeout_ms)
        {
            d->tx_error_count++;
            return false;
        }
    }
    return true;
}

static void USART_SPI_FlushRX(USART_SPI_Driver_t *d)
{
    if ((d->usart->US_CSR & US_CSR_SPI_RXRDY_Msk) != 0U)
    {
        volatile uint32_t dummy = d->usart->US_RHR;
        (void)dummy;
    }
}

/*************************************************
 *              LOOKUP                           *
 *************************************************/
static USART_SPI_Driver_t* USART_SPI_Driver_Get(usart_registers_t *usart)
{
    for (uint32_t i = 0U; i < USART_SPI_DRIVER_COUNT; i++)
    {
        if (usart_spi_drivers[i].usart == usart)
        {
            return &usart_spi_drivers[i];
        }
    }
    return NULL;
}

/*************************************************
 *              INITIALIZATION                   *
 *************************************************/
Std_ReturnType USART_SPI_Driver_Init(void)
{
    /* [0] USART2 ------------------------------------------------ */
    // USART2_SPI_Initialize();
    usart_spi_drivers[0].timeout_ms     = USART_SPI_TIMEOUT_MS;
    usart_spi_drivers[0].tx_error_count = 0U;
    usart_spi_drivers[0].rx_error_count = 0U;

    /*
    USART0_SPI_Initialize();
    usart_spi_drivers[1].timeout_ms     = USART_SPI_TIMEOUT_MS;
    usart_spi_drivers[1].tx_error_count = 0U;
    usart_spi_drivers[1].rx_error_count = 0U;
    */

    return E_OK;
}

/*************************************************
 *              SINGLE BYTE / WORD               *
 *************************************************/
Std_ReturnType USART_SPI_Transmit8(usart_registers_t *usart,
                                    uint8_t  data,
                                    uint8_t *receivedData)
{
    USART_SPI_Driver_t *d = USART_SPI_Driver_Get(usart);
    if (d == NULL) { return E_ERROR; }

    /* Clear overrun, flush stale RX */
    d->usart->US_CR = US_CR_SPI_RSTSTA_Msk;
    USART_SPI_FlushRX(d);

    if (!USART_SPI_WaitTXRDY(d))  { return E_TIMEOUT; }

    d->usart->US_THR = (uint32_t)data;

    if (!USART_SPI_WaitRXRDY(d))  { return E_TIMEOUT; }

    uint8_t rx = (uint8_t)(d->usart->US_RHR & 0xFFU);

    if (receivedData != NULL)
    {
        *receivedData = rx;
    }

    return E_OK;
}

Std_ReturnType USART_SPI_Transmit16(usart_registers_t *usart,
                                     uint16_t  data,
                                     uint16_t *receivedData)
{
    uint8_t rx_hi = 0U;
    uint8_t rx_lo = 0U;

    /* MSB first */
    Std_ReturnType status = USART_SPI_Transmit8(usart, (uint8_t)(data >> 8U), &rx_hi);
    if (status != E_OK) { return status; }

    status = USART_SPI_Transmit8(usart, (uint8_t)(data & 0xFFU), &rx_lo);
    if (status != E_OK) { return status; }

    if (receivedData != NULL)
    {
        *receivedData = ((uint16_t)rx_hi << 8U) | (uint16_t)rx_lo;
    }

    return E_OK;
}

Std_ReturnType USART_SPI_Write(usart_registers_t *usart, uint8_t data)
{
    return USART_SPI_Transmit8(usart, data, NULL);
}

/*************************************************
 *              BUFFER TRANSFERS                 *
 *************************************************/
Std_ReturnType USART_SPI_WriteRead(usart_registers_t *usart,
                                    const uint8_t *pTransmitData, size_t txSize,
                                    uint8_t       *pReceiveData,  size_t rxSize)
{
    if ((txSize == 0U) && (rxSize == 0U)) { return E_ERROR; }

    USART_SPI_Driver_t *d = USART_SPI_Driver_Get(usart);
    if (d == NULL) { return E_ERROR; }

    /* Reset overrun, flush stale RX */
    d->usart->US_CR = US_CR_SPI_RSTSTA_Msk;
    USART_SPI_FlushRX(d);

    size_t txCount   = 0U;
    size_t rxCount   = 0U;
    size_t dummySize = (rxSize > txSize) ? (rxSize - txSize) : 0U;
    size_t totalTx   = txSize + dummySize;

    if (!USART_SPI_WaitTXRDY(d)) { return E_TIMEOUT; }

    while (txCount < totalTx)
    {
        /* --- TX phase --- */
        if (txCount < txSize)
        {
            d->usart->US_THR = (uint32_t)(pTransmitData[txCount]);
        }
        else
        {
            d->usart->US_THR = 0xFFU;   /* dummy byte to clock in RX */
        }
        txCount++;

        /* --- RX phase --- */
        if (rxCount < rxSize)
        {
            if (!USART_SPI_WaitRXRDY(d)) { return E_TIMEOUT; }

            uint8_t rx = (uint8_t)(d->usart->US_RHR & 0xFFU);

            if (pReceiveData != NULL)
            {
                pReceiveData[rxCount] = rx;
            }
            rxCount++;
        }
        else
        {
            /* TX-only region: wait before sending next byte */
            if (txCount < totalTx)
            {
                if (!USART_SPI_WaitTXRDY(d)) { return E_TIMEOUT; }
            }
        }
    }

    /* Wait for shift register to drain */
    if (!USART_SPI_WaitTXEMPTY(d)) { return E_TIMEOUT; }

    return E_OK;
}

Std_ReturnType USART_SPI_TransmitArray(usart_registers_t *usart,
                                        const uint8_t *data, size_t size)
{
    if (data == NULL || size == 0U) { return E_ERROR; }
    return USART_SPI_WriteRead(usart, data, size, NULL, 0U);
}

Std_ReturnType USART_SPI_ReceiveArray(usart_registers_t *usart,
                                       uint8_t *pReceiveData, size_t size)
{
    if (pReceiveData == NULL || size == 0U) { return E_ERROR; }
    return USART_SPI_WriteRead(usart, NULL, 0U, pReceiveData, size);
}

/*************************************************
 *              STATUS                           *
 *************************************************/
bool USART_SPI_IsBusy(usart_registers_t *usart)
{
    USART_SPI_Driver_t *d = USART_SPI_Driver_Get(usart);
    if (d == NULL) { return false; }

    return (d->usart->US_CSR & US_CSR_SPI_TXEMPTY_Msk) == 0U;
}

bool USART_SPI_WaitTxComplete(usart_registers_t *usart, uint32_t timeout_ms)
{
    uint32_t start = USART_SPI_GetTick();

    while (USART_SPI_IsBusy(usart))
    {
        if (timeout_ms > 0U && (USART_SPI_GetTick() - start) >= timeout_ms)
        {
            return false;
        }
    }

    return true;
}

/*************************************************
 *              STATISTICS                       *
 *************************************************/
uint32_t USART_SPI_GetTxErrorCount(usart_registers_t *usart)
{
    USART_SPI_Driver_t *d = USART_SPI_Driver_Get(usart);
    return (d != NULL) ? d->tx_error_count : 0U;
}

uint32_t USART_SPI_GetRxErrorCount(usart_registers_t *usart)
{
    USART_SPI_Driver_t *d = USART_SPI_Driver_Get(usart);
    return (d != NULL) ? d->rx_error_count : 0U;
}

void USART_SPI_ClearErrorCounts(usart_registers_t *usart)
{
    USART_SPI_Driver_t *d = USART_SPI_Driver_Get(usart);
    if (d != NULL)
    {
        d->tx_error_count = 0U;
        d->rx_error_count = 0U;
    }
}