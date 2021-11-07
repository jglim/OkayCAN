# OkayCAN : OBD

**UNVERIFIED**
_No vehicle to test on; tested against a simulated ecu on another esp32.
Please let me know if this works! --jg_

Queries an OBD-II compliant ECU for its engine speed, vehicle speed, 
and throttle position. These parameters are typically supported by most ECUs.

A open Wi-Fi network with the name "OkayCAN-OBD" is also created, and serves a 
simple web page over http at 192.168.4.1 . The page shows real-time results of the
OBD queries as JSON if they are available.

The contents of the web page can be found in the index.html
Further instructions on editing it can be found in mainpage.h


Assumes that the bus arbitration IDs are 7E0/7E8, running at 500k baud. 
These values can be changed in config.h

This example depends on [ESPAsyncTCP](https://github.com/me-no-dev/ESPAsyncTCP) and [ESPAsyncWebServer](https://github.com/me-no-dev/ESPAsyncWebServer) from [me-no-dev](https://github.com/me-no-dev/).

## Uploading

Enter DFU mode with these steps:

1. Press BOOT button
2. Press RESET button
3. Release RESET button
4. Release BOOT button

When done correctly, a serial port should appear on the connected computer, which can be used for uploading the firmware.
After the upload completes, press and release RESET to begin running the newly flashed firmware.

## Webpage Output

```
OkayCAN Debug
{
    "timestamp": 35530765,
    "battery_voltage_mv": 4783,
    "tx_error_counter": 0,
    "pid_response": [
        {
            "pid": 268,
            "raw": {
                "0": 1,
                "1": 224,
                "2": 0,
                "3": 0,
                "4": 0,
                "5": 0
            },
            "interpreted": "120 rpm"
        },
        {
            "pid": 269,
            "raw": {
                "0": 231,
                "1": 0,
                "2": 0,
                "3": 0,
                "4": 0,
                "5": 0
            },
            "interpreted": "231 km/h"
        },
        {
            "pid": 273,
            "raw": {
                "0": 229,
                "1": 0,
                "2": 0,
                "3": 0,
                "4": 0,
                "5": 0
            },
            "interpreted": "90 %"
        }
    ]
}
```
