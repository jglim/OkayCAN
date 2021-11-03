/*

OkayCAN : Getting Started

This firmware attempts to connect to an MB ECU and read some basic parameters 
(part number, VIN etc.) over CAN/ISO-TP/UDS and into the USB (CDC) serial port.

Assumes that the bus arbitration IDs are 7E0/7E8, running at 500k baud. 
These values can be changed in config.h

At the time of writing, the Arduino framework on PlatformIO is incomplete,
therefore the `platformio.ini` configuration for `platform` and `platform_packages`
have been modified to allow this project to build properly.

For more details on experimental ESP32-S2 arduino support, 
see https://github.com/espressif/arduino-esp32/issues/5436

This example embeds lishen2's isotp-c stack which is kindly licensed as MIT (thank you!): 
https://github.com/lishen2/isotp-c

*/


// this example also includes a limited CAN-only demo; 
// uncomment the below define to use the CAN-only demo 
// #define EXAMPLE_CAN

#include <Arduino.h>

// esp32-s2 has native USB, so we can run our serial through USB-CDC!
#include "usbserial/usbserial.h"

// simplified wrapper to work with iso-tp, allows easy switching between CAN and ISO-TP
#include "transport/transport.h"

// global configuration for pin definitions and CAN/ISO-TP parameters
#include "config.h"

// MB typically uses these "magic" constants across their ECUs
#define READ_VARIANT_ID (0xF100)
#define READ_PARTNUMBER (0xF111)
#define READ_SERIAL_NUMBER (0xF18C)
#define READ_VIN_ORIGINAL (0xF190)
#define READ_VIN_CURRENT (0xF1A0)
#define READ_FW_IDENTIFIER (0xF121)
#define READ_FW_AGGREGATE_VERSION (0xF151)

// parameters that we would like to request from the ECU
uint16_t parameters_to_read[] = {
	READ_VARIANT_ID, READ_PARTNUMBER, READ_SERIAL_NUMBER,
	READ_VIN_ORIGINAL, READ_VIN_CURRENT, READ_FW_IDENTIFIER};

// keeps track of which requests we are issuing
int parameter_request_index = 0;

// millisecond timestamp for "nonblocking" delay
ulong last_query_ms = 0;

// reads the incoming voltage from the vehicle/OBD supply if it is available, or the USB voltage
int read_vcc_mv()
{
	// there are 2 identical schottky "ORing"/backfeed protection diodes on the okaycan board
	// the input voltage will therefore drop by approx 0.2V, depending on the load
	int adcReading = analogReadMilliVolts(GPIO_VSENSE) + 0.2;
	// sense resistors are 10K / 1.6K
	return (int)(adcReading * 4.75);
}


#ifdef EXAMPLE_CAN

/* 
example of how to send a can frame. this is a single-frame UDS read data by identifier
since it fits in a single frame, and the response (normally) fits in a single frame,
we can express this UDS request in a raw CAN frame
*/
void send_can_demo()
{
	// fill up the transmit buffer, and set the message's length
	int content_length = 8;
	transport_tx_buffer[0] = 0x03; // content length
	transport_tx_buffer[1] = 0x22; // read data by identifier
	transport_tx_buffer[2] = 0xF1; // identifier : high
	transport_tx_buffer[3] = 0x00; // identifier : low
	transport_tx_buffer[4] = 0x00; // padding
	transport_tx_buffer[5] = 0x00; // padding
	transport_tx_buffer[6] = 0x00; // padding
	transport_tx_buffer[7] = 0x00; // padding

	// transmits the CAN message
	if (send(transport_tx_buffer, content_length))
	{
		// transmit completed without issues
		USBSerial.printf("%08X TX CAN: ", millis());
		print_hex(transport_tx_buffer, content_length);
	}
	else
	{
		// transmit failed
		USBSerial.println("Send error");
	}
}

// called when a valid CAN message is received
void receive_handler_can(int sender_id, uint8_t *payload, int content_length)
{
	USBSerial.printf("%08X RX CAN [%04X]: ", millis(), sender_id);
	print_hex(payload, content_length);
}

#else 

// sends a UDS read request by identifier
void send_read_query(uint16_t identifier)
{
	// fill up the transmit buffer, and set the message's length
	int content_length = 3;
	transport_tx_buffer[0] = 0x22; // 22 : UDS read data by identifier
	transport_tx_buffer[1] = (identifier >> 8) & 0xFF;
	transport_tx_buffer[2] = identifier & 0xFF;

	// transmits the ISO-TP message
	if (send(transport_tx_buffer, content_length))
	{
		// transmit completed without issues
		USBSerial.printf("%08X TX ISO-TP: ", millis());
		print_hex(transport_tx_buffer, content_length);
	}
	else
	{
		// transmit failed
		USBSerial.println("Send error");
	}
}

// called when a valid iso-tp message is received
void receive_handler_isotp(int sender_id, uint8_t *payload, int content_length)
{
	USBSerial.printf("%08X RX ISO-TP: ", millis());
	print_hex(payload, content_length);

	// valid responses to our read requests must have a minimum of 3 bytes, and begin with 0x62
	if ((content_length >= 3) && (payload[0] == 0x62))
	{
		uint16_t uds_read_identifier = (payload[1] << 8) | payload[2];

		// used to interpret string responses
		int string_length = content_length - 3;

		// check the response identifier to decide how to interpret the received data
		if (uds_read_identifier == READ_VIN_CURRENT)
		{
			USBSerial.printf("Received VIN Current: ");
			USBSerial.write(&payload[3], string_length);
		}
		else if (uds_read_identifier == READ_VIN_ORIGINAL)
		{
			USBSerial.printf("Received VIN Original: ");
			USBSerial.write(&payload[3], string_length);
		}
		else if (uds_read_identifier == READ_PARTNUMBER)
		{
			USBSerial.printf("Received Part Number: ");
			USBSerial.write(&payload[3], string_length);
		}
		else if (uds_read_identifier == READ_SERIAL_NUMBER)
		{
			USBSerial.printf("Received Serial Number: ");
			USBSerial.write(&payload[3], string_length);
		}
		else if (uds_read_identifier == READ_VARIANT_ID)
		{
			USBSerial.printf("Received Variant ID: ");
			if (string_length == 4)
			{
				// for 4 byte responses, the variant ID is usually at positions 4,5
				USBSerial.printf("%02X%02X", payload[4], payload[5]);
			}
			else
			{
				// if it isn't a value that we can interpret, dump the raw values
				print_hex(&payload[3], string_length);
			}
		}
		else if (uds_read_identifier == READ_FW_IDENTIFIER)
		{
			// firmware values are 10-byte-sized strings
			USBSerial.printf("Received Software block data: ");
			const int block_size = 10;
			if ((string_length % block_size) == 0)
			{
				int number_of_blocks = string_length / block_size;
				for (int i = 0; i < number_of_blocks; i++)
				{
					USBSerial.println();
					USBSerial.write(&payload[3 + (i * block_size)], block_size);
				}
			}
		}
		else
		{
			// if this path is taken (normally impossible), dump the values to debug
			USBSerial.printf("Unhandled read command: %02X", uds_read_identifier);
		}
		USBSerial.println();
	}
	else if ((content_length >= 1) && (payload[0] == 0x7F))
	{
		// 7F : negative response
		USBSerial.printf("Received a negative response\n");
	}
}

#endif

// runs once when the microcontroller starts
void setup()
{
	// activate the virtual usb (CDC) port
	configure_usb_serial();

	// set the voltage sensing pin as an input
	pinMode(GPIO_VSENSE, INPUT);

	// configure CAN and ISO-TP
	setup_transport(CAN_REQUEST_ID, CAN_RESPONSE_ID, CAN_DATA_RATE);

#ifdef EXAMPLE_CAN

	// set the operating mode as CAN
	set_transport_mode(MODE_CAN);

	// assign receive_handler to be called whenever a valid CAN frame is available
	register_receive_handler(receive_handler_can);

#else

	// set the operating mode as ISO-TP
	set_transport_mode(MODE_ISOTP);

	// assign receive_handler to be called whenever a valid ISO-TP message is available
	register_receive_handler(receive_handler_isotp);

#endif

}

// runs in a loop indefinitely
void loop()
{
	// check the CAN inbox, and try to assemble any ISO-TP messages
	poll_transport();

	// sends queries every second
	if ((millis() - last_query_ms) > 1000)
	{
		last_query_ms = millis();

		// display the adjusted SENSE voltage
		USBSerial.printf("Voltage: %d mV\n", read_vcc_mv());


#ifdef EXAMPLE_CAN
		// sends a can frame
		send_can_demo();
#else
		// sends a uds read request
		send_read_query(parameters_to_read[parameter_request_index]);
#endif

		// increment the parameter index to send a different parameter on the next loop
		parameter_request_index++;
		parameter_request_index %= (sizeof(parameters_to_read) / sizeof(uint16_t));
	}
}
