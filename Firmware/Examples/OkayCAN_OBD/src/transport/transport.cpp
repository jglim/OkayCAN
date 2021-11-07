#include "transport.h"

/* transport : bridges the ISO-TP stack with the CAN driver */

// function to call when a valid iso-tp message is received
message_receive_callback_t receive_handler;

IsoTpLink g_link;
uint8_t g_isotpRecvBuf[MAX_TRANSACTION_SIZE];
uint8_t g_isotpSendBuf[MAX_TRANSACTION_SIZE];

uint8_t transport_rx_buffer[MAX_TRANSACTION_SIZE];
uint8_t transport_tx_buffer[MAX_TRANSACTION_SIZE];

uint8_t mode_isotp = 0;

// sends a can/iso-tp message
int send(uint8_t *buffer, int size)
{
    if (mode_isotp)
    {
        // send an isotp frame; this should return ISOTP_RET_OK on success
        return !isotp_send(&g_link, buffer, size);
    }
    else
    {
        // send a raw can frame
        return (CAN::send_twai_frame(g_link.send_arbitration_id, buffer, size) == 0);
    }
}

// checks the can mailbox, if there's available content, parse and raise the user's event handler
void poll_transport()
{
    int packet_id = 0;
    int can_receive_size = CAN::poll_twai(transport_rx_buffer, &packet_id);
    if (can_receive_size > 0)
    {
        // can frame received..
        if (mode_isotp)
        {
            // .. for isotp, continue assembling the message
            isotp_on_can_message(&g_link, transport_rx_buffer, can_receive_size);
        }
        else
        {
            // .. for can, raise the received event immediately, no further processing required
            if (receive_handler != 0)
            {
                (*receive_handler)(packet_id, transport_rx_buffer, can_receive_size);
            }
        }
        // done with the user's event handler, clear this buffer to receive the next message
        memset(transport_rx_buffer, 0, MAX_TRANSACTION_SIZE);
    }

    /* iso-tp: poll link to handle multiple frame transmition */
    if (mode_isotp)
    {
        isotp_poll(&g_link);

        // check if a completed isotp frame is available, and if so, raise the user event handler
        uint16_t out_size = 0;
        int isotp_receive_result = isotp_receive(&g_link, transport_rx_buffer, MAX_TRANSACTION_SIZE, &out_size);
        if (ISOTP_RET_OK == isotp_receive_result)
        {
            if (receive_handler != 0)
            {
                (*receive_handler)(packet_id, transport_rx_buffer, out_size);
            }
        }
    }
}

// attaches a user's callback event whenever a valid can/iso-tp message is received
void register_receive_handler(message_receive_callback_t callback_fn)
{
    receive_handler = callback_fn;
}

// initialize and configure can+iso-tp
void setup_transport(int request_id, int response_id, int baud_rate)
{
    isotp_init_link(&g_link, request_id,
                    g_isotpSendBuf, sizeof(g_isotpSendBuf),
                    g_isotpRecvBuf, sizeof(g_isotpRecvBuf));
    CAN::setup_twai(GPIO_CAN_RX, GPIO_CAN_TX, response_id, baud_rate);
}

// sets the operation mode: raw can frames or a full iso-tp stack
void set_transport_mode(int mode)
{
    mode_isotp = mode;
}