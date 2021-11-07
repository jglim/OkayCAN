#include "usbserial.h"
#include "config.h"

#if ARDUINO_USB_CDC_ON_BOOT
#define HWSerial Serial0
#define USBSerial Serial
#else
#define HWSerial Serial
USBCDC USBSerial;
#endif

void configure_usb_serial()
{
    // hardware serial test points are available on the back of the board
    HWSerial.begin(115200);
    HWSerial.setDebugOutput(true);

    USBSerial.begin();
    USB.begin();
}

void print_hex(const uint8_t *buffer, uint16_t size)
{
    for (int i = 0; i < size; i++)
    {
        if (buffer[i] < 0x10)
        {
            USBSerial.print("0");
        }
        USBSerial.print(buffer[i], HEX);
        USBSerial.print(" ");
    }
    USBSerial.println();
}
