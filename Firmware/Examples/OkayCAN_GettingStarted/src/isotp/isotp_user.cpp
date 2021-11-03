
// requiring arduino.h for millis(); possible to substitute with esp_timer_get_time
#include <Arduino.h>
#include <isotp/isotp_user.h>
#include "can/can.h"

/* user implemented, print debug message */
void isotp_user_debug(const char *message, ...)
{
}

/* user implemented, send can message */
int isotp_user_send_can(const uint32_t arbitration_id, const uint8_t *data, const uint8_t size)
{
    if (CAN::send_twai_frame(arbitration_id, data, size) == 0)
    {
        return ISOTP_RET_OK;
    }
    else
    {
        return ISOTP_RET_ERROR;
    }
}

/* user implemented, get millisecond */
uint32_t isotp_user_get_ms(void)
{
    return millis();
}