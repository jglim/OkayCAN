#ifndef __USBSERIAL__
#define __USBSERIAL__

#include <Arduino.h>
#include "USB.h"

void configure_usb_serial();
void print_hex(const uint8_t *buffer, uint16_t size);

extern USBCDC USBSerial;

#endif