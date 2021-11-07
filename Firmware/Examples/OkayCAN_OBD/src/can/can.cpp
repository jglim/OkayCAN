#include "can.h"

/* ESP32-S2 CAN driver wrapper */

// twai issues : https://github.com/espressif/esp-idf/issues/5604
// listener optimization issues : https://github.com/adafruit/circuitpython/blob/main/ports/espressif/common-hal/canio/Listener.c
// twai driver docs : https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-reference/peripherals/twai.html

static twai_filter_config_t f_config = TWAI_FILTER_CONFIG_ACCEPT_ALL();
static twai_timing_config_t t_config = TWAI_TIMING_CONFIG_100KBITS();

void CAN::set_twai_timing(int data_rate)
{
    switch (data_rate)
    {
        case 1000:
        {
            t_config = TWAI_TIMING_CONFIG_1KBITS();
            break;
        }
        case 5000:
        {
            t_config = TWAI_TIMING_CONFIG_5KBITS();
            break;
        }
        case 10000:
        {
            t_config = TWAI_TIMING_CONFIG_10KBITS();
            break;
        }
        case 12500:
        {
            t_config = TWAI_TIMING_CONFIG_12_5KBITS();
            break;
        }
        case 16000:
        {
            t_config = TWAI_TIMING_CONFIG_16KBITS();
            break;
        }
        case 20000:
        {
            t_config = TWAI_TIMING_CONFIG_20KBITS();
            break;
        }
        case 25000:
        {
            t_config = TWAI_TIMING_CONFIG_25KBITS();
            break;
        }
        case 50000:
        {
            t_config = TWAI_TIMING_CONFIG_50KBITS();
            break;
        }
        case 80000:
        {
            // fixme
        }
        case 83333:
        {
            // fixme
            // T1:16	T2:8	BTQ:24	SP%:66.67	SJW:1	BITRATE:83.33	ERR%:0	BTR0:13	BTR1:7e
            //(REG_BTR1, 0x7F, 0x7E); // tseg1?
            //(REG_BTR0, 0x3F, 0x13); // brp?
            //t_config = {.brp = 0, .tseg_1 = 0, .tseg_2 = 0, .sjw = 0, .triple_sampling = false };
        }
        case 100000:
        {
            t_config = TWAI_TIMING_CONFIG_100KBITS();
            break;
        }
        case 125000:
        {
            t_config = TWAI_TIMING_CONFIG_125KBITS();
            break;
        }
        case 250000:
        {
            t_config = TWAI_TIMING_CONFIG_250KBITS();
            break;
        }
        case 500000:
        {
            t_config = TWAI_TIMING_CONFIG_500KBITS();
            break;
        }
        case 800000:
        {
            t_config = TWAI_TIMING_CONFIG_800KBITS();
            break;
        }
        case 1000000:
        {
            t_config = TWAI_TIMING_CONFIG_1MBITS();
            break;
        }
    }
}

int CAN::poll_twai(uint8_t *receive_buffer, int *packet_id)
{
    twai_message_t rx_msg;
    // not running in a task, so check the mailbox and don't block if it's empty
    if (twai_receive(&rx_msg, pdMS_TO_TICKS(0)) != ESP_OK)
    {
        return 0;
    }

    int ext = rx_msg.flags & 0x01;
    int rtr = rx_msg.flags & 0x02;

    if (ext != 0)
    {
        // skip extended IDs
        return 0;
    }
    if (rtr != 0)
    {
        // skip RTRs as they have no actual payload
        return 0;
    }

    *packet_id = rx_msg.identifier;
    for (int i = 0; i < rx_msg.data_length_code; i++)
    {
        receive_buffer[i] = rx_msg.data[i];
    }
    return rx_msg.data_length_code;
}

void CAN::setup_twai(gpio_num_t can_rx_pin, gpio_num_t can_tx_pin, int id_to_filter, int data_rate)
{
    twai_stop();
    twai_driver_uninstall();

    twai_general_config_t g_config =
        {.mode = TWAI_MODE_NORMAL,
         .tx_io = can_tx_pin,
         .rx_io = can_rx_pin,
         .clkout_io = TWAI_IO_UNUSED,
         .bus_off_io = TWAI_IO_UNUSED,
         .tx_queue_len = 0,
         .rx_queue_len = 20,
         .alerts_enabled = TWAI_ALERT_NONE,
         .clkout_divider = 0};

    // see docs for filter config : https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-reference/peripherals/twai.html#acceptance-filter
    // filtering by 11-bit id, while the hardware filter supports extended id, hence we have to shift in by 21 bits
    f_config.acceptance_code = (id_to_filter << 21);
    // 11-bit mask
    f_config.acceptance_mask = ~(0x7FF << 21);
    f_config.single_filter = true;

    set_twai_timing(data_rate);
    twai_driver_install(&g_config, &t_config, &f_config);
    twai_start();
}

// enqueues an 11-bit CAN frame to be sent. returns 0 on success
int CAN::send_twai_frame(const uint32_t recipient_id, const uint8_t *data, const uint8_t size)
{
    twai_message_t message;

    message.flags = TWAI_MSG_FLAG_NONE;
    message.ss = 0;
    message.self = 0;
    message.dlc_non_comp = 0;
    message.reserved = 27;

    message.identifier = recipient_id;
    message.rtr = 0;
    message.extd = 0;
    message.data_length_code = size;

    for (int i = 0; i < size; i++)
    {
        message.data[i] = data[i];
    }

    // send message: tx queue is disabled (immediate))
    return twai_transmit(&message, pdMS_TO_TICKS(1000));
}