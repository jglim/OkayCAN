#ifndef __OKAYCAN_CONFIG__
#define __OKAYCAN_CONFIG__

// OkayCAN pin definition
#define GPIO_CAN_RX GPIO_NUM_4
#define GPIO_CAN_TX GPIO_NUM_5
#define GPIO_VSENSE GPIO_NUM_2
#define GPIO_LED GPIO_NUM_16 // absent in V1.0

// Buffer sizes
#define MAX_TRANSACTION_SIZE (4128)

/* Max number of messages the receiver can receive at one time, this value 
 * is affected by can driver queue length
 */
static int ISO_TP_DEFAULT_BLOCK_SIZE = 8;

/* The STmin parameter value specifies the minimum time gap allowed between 
 * the transmission of consecutive frame network protocol data units
 */
static int ISO_TP_DEFAULT_ST_MIN = 0;

/* This parameter indicate how many FC N_PDU WTs can be transmitted by the 
 * receiver in a row.
 */
static int ISO_TP_MAX_WFT_NUMBER = 1;

/* Private: The default timeout to use when waiting for a response during a
 * multi-frame send or receive.
 */
static int ISO_TP_DEFAULT_RESPONSE_TIMEOUT = 1000;

/* Private: Determines if by default, padding is added to ISO-TP message frames.
 */
static int ISO_TP_FRAME_PADDING = 1;

/* CAN/TWAI controller data rate */
static int CAN_DATA_RATE = 500E3;

/* CAN/TWAI outbound arbitration id */
static int CAN_REQUEST_ID = 0x7E0; // ecu
// static int CAN_REQUEST_ID = 0x7DF; // broadcast (officially, obd uses a broadcast address)

/* CAN/TWAI inbound (filtered) arbitration id */
static int CAN_RESPONSE_ID = 0x7E8;

#endif