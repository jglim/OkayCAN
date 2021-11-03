# OkayCAN : Getting Started

This firmware attempts to connect to an MB ECU and read some basic parameters 
(part number, VIN etc.) over CAN/ISO-TP/UDS and into the USB (CDC) serial port.

Assumes that the bus arbitration IDs are 7E0/7E8, running at 500k baud. 
These values can be changed in config.h

At the time of writing, the Arduino framework on PlatformIO is incomplete,
therefore the `platformio.ini` configuration for `platform` and `platform_packages`
have been modified to allow this project to build properly.

For more details on experimental ESP32-S2 arduino support, 
see [https://github.com/espressif/arduino-esp32/issues/5436](https://github.com/espressif/arduino-esp32/issues/5436)

This example embeds [lishen2's](https://github.com/lishen2/) isotp-c stack which is kindly licensed as MIT (thank you!): 
[https://github.com/lishen2/isotp-c](https://github.com/lishen2/isotp-c)

## Uploading

Enter DFU mode with these steps:

1. Press BOOT button
2. Press RESET button
3. Release RESET button
4. Release BOOT button

When done correctly, a serial port should appear on the connected computer, which can be used for uploading the firmware.
After the upload completes, press and release RESET to begin running the newly flashed firmware.

## Serial Output

When connected to a compatible ECU, the serial monitor should display values that are similar to the below snippets.

### ISO-TP mode:

```
Voltage: 11993 mV
00000BBE TX ISO-TP: 22 F1 8C
00000BC3 RX ISO-TP: 62 F1 8C 33 31 33 31 XX XX XX XX
Received Serial Number: 3131XXXX
Voltage: 11979 mV
00000FA7 TX ISO-TP: 22 F1 90
00000FAC RX ISO-TP: 62 F1 90 57 44 44 32 34 36 32 30 30 31 4A XX XX XX XX XX XX
Received VIN Original: WDD2462001JXXXXXX
Voltage: 12003 mV
00001390 TX ISO-TP: 22 F1 A0
00001394 RX ISO-TP: 62 F1 A0 57 44 44 32 34 36 32 30 30 31 4A XX XX XX XX XX XX
Received VIN Current: WDD2462001JXXXXXX
Voltage: 12003 mV
00001779 TX ISO-TP: 22 F1 21
00001783 RX ISO-TP: 62 F1 21 36 35 31 39 30 34 30 33 30 31 36 35 31 39 30 32 33 31 30 31 36 35 31 39 30 33 31 34 33 31
Received Software block data:
6519040301
6519023101
6519031431
Voltage: 11984 mV
00001B62 TX ISO-TP: 22 F1 00
00001B67 RX ISO-TP: 62 F1 00 02 21 31 01
Received Variant ID: 2131
Voltage: 12003 mV
00001F4B TX ISO-TP: 22 F1 11
00001F50 RX ISO-TP: 62 F1 11 36 35 31 39 30 31 30 36 30 31
Received Part Number: 6519010601
...
```


### CAN mode:
```
Voltage: 11993 mV
00001779 TX CAN: 03 22 F1 00 00 00 00 00
0000177F RX CAN [07E8]: 07 62 F1 00 02 21 31 01
Voltage: 11941 mV
00001B62 TX CAN: 03 22 F1 00 00 00 00 00
00001B67 RX CAN [07E8]: 07 62 F1 00 02 21 31 01
...
```
