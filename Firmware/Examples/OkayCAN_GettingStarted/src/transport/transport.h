#ifndef __TRANSPORT__
#define __TRANSPORT__

/* transport : bridges the ISO-TP stack with the CAN driver */

#include <stdint.h>
#include <can/can.h>
#include <isotp/isotp.h>

#define MODE_ISOTP (1)
#define MODE_CAN (0)

extern IsoTpLink g_link;

extern uint8_t g_isotpRecvBuf[MAX_TRANSACTION_SIZE];
extern uint8_t g_isotpSendBuf[MAX_TRANSACTION_SIZE];
extern uint8_t transport_rx_buffer[MAX_TRANSACTION_SIZE];
extern uint8_t transport_tx_buffer[MAX_TRANSACTION_SIZE];

typedef void (*message_receive_callback_t)(int, uint8_t*, int);
void register_receive_handler(message_receive_callback_t callback_fn);
int send(uint8_t *buffer, int size);
void poll_transport();
void setup_transport(int request_id, int response_id, int baud_rate);
void set_transport_mode(int mode);

#endif