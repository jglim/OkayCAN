#ifndef __CAN__
#define __CAN__

/* ESP32-S2 CAN driver wrapper */

#include <stdint.h>
#include "driver/twai.h"

class CAN
{
private:
    static void set_twai_timing(int data_rate);
    static int twai_gpio_rx;
    static int twai_gpio_tx;

public:
    static void setup_twai(gpio_num_t can_rx_pin, gpio_num_t can_tx_pin, int id_to_filter, int baudrate);
    static int poll_twai(uint8_t *receive_buffer, int *packet_id);
    static int send_twai_frame(const uint32_t recipient_id, const uint8_t *data, const uint8_t size);
};

#endif
