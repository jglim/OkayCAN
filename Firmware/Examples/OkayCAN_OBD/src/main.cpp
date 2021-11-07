/*
OkayCAN : OBD

[UNVERIFIED] 
No vehicle to test on; tested against a simulated ecu on another esp32.
Please let me know if this works! --jg

Queries an OBD-II compliant ECU for its engine speed, vehicle speed, 
and throttle position. These parameters are typically supported by most ECUs.

A open Wi-Fi network with the name "OkayCAN-OBD" is also created, and serves a 
simple web page over http at 192.168.4.1 . The page shows real-time results of the
OBD queries as JSON if they are available.

The contents of the web page can be found in the index.html
Further instructions on editing it can be found in mainpage.h

*/

#include <Arduino.h>

// esp32-s2 has native USB, so we can run our serial through USB-CDC
#include "usbserial/usbserial.h"

// simplified wrapper to work with iso-tp, allows easy switching between CAN and ISO-TP
#include "transport/transport.h"

// global configuration for pin definitions and CAN/ISO-TP parameters
#include "config.h"

// wifi, dns, http
#include <DNSServer.h>
#include <WiFi.h>
#include <AsyncTCP.h>
#include <ESPAsyncWebServer.h>
#include "mainpage.h"

// OBD-II PIDs as defined here: https://en.wikipedia.org/wiki/OBD-II_PIDs
#define SUPPORTED_PIDS_1 (0x0100)
#define ENGINE_SPEED (0x010C)
#define VEHICLE_SPEED (0x010D)
#define THROTTLE_POSITION (0x0111)
#define RUNTIME_SINCE_START (0x011F)
#define OBD_COMPLIANCE (0x011C)

// parameters that we would like to request from the ECU
uint16_t parameters_to_read[] = {
	ENGINE_SPEED,
	VEHICLE_SPEED,
	THROTTLE_POSITION,
};

#define PARAMETER_COUNT (sizeof(parameters_to_read) / sizeof(uint16_t))

#pragma pack(push, 1)
typedef struct OBD_RESULT
{
	uint64_t MSG_TIMESTAMP;
	uint32_t VBATT_MV;
	uint32_t TX_ERROR_COUNTER;
	uint64_t PID_RESPONSE[PARAMETER_COUNT];
} _OBD_RESULT;
#pragma pack(pop)

// these store the raw results for the queried PIDs; interpretation should be done in the browser
OBD_RESULT obd_result;

// hex-string representation of obd_result. 
// hex takes up twice as much space, and one byte is added for the null terminator.
uint8_t result_buffer_text[sizeof(OBD_RESULT) * 2 + 1] = {};

// keeps track of which requests we are issuing
int parameter_request_index = 0;

// millisecond timestamp for "nonblocking" delay
ulong last_query_ms = 0;

// dns & web server
DNSServer dns_server;
AsyncWebServer http_server(80);

// reads the incoming voltage from the vehicle/OBD supply if it is available, or the USB voltage
int read_vcc_mv()
{
	// there are 2 identical schottky "ORing"/backfeed protection diodes on the okaycan board
	// the input voltage will therefore drop by approx 0.2V, depending on the load
	int adcReading = analogReadMilliVolts(GPIO_VSENSE) + 0.2;
	// sense resistors are 10K / 1.6K
	return (int)(adcReading * 4.75);
}

// called when a valid iso-tp message is received
void receive_handler_isotp(int sender_id, uint8_t *payload, int content_length)
{
	if (content_length >= 2)
	{
		uint16_t obd_pid_identifier = ((payload[0] - 0x40) << 8) | payload[1];
		for (int i = 0; i < PARAMETER_COUNT; i++)
		{
			// if it's a response to a pid that we sent, store it in our result buffer
			if (parameters_to_read[i] == obd_pid_identifier)
			{
				// expecting single-frame responses only, any excess will be truncated
				memcpy(&obd_result.PID_RESPONSE[i], payload, 8);
				break;
			}
		}
	}
}

// sends a OBD PID read request
void send_read_query(uint16_t pid)
{
	int content_length = 2;
	transport_tx_buffer[0] = (pid >> 8) & 0xFF;
	transport_tx_buffer[1] = (pid & 0xFF);

	// transmits the ISO-TP message
	if (send(transport_tx_buffer, content_length))
	{
		// transmit completed without issues
	}
	else
	{
		// transmit failed
		USBSerial.println("Send error");
		obd_result.TX_ERROR_COUNTER++;
	}
}

// handlers for http events
void setup_http()
{
	// base page
	http_server.on("/", HTTP_GET, [](AsyncWebServerRequest *request)
				   { request->send_P(200, "text/html", mainpage_p); });

	// obd endpoint
	http_server.on("/poll-ep", HTTP_POST, [](AsyncWebServerRequest *request)
				   { request->send(200, "text/plain", reinterpret_cast<char *>(result_buffer_text)); });

	http_server.begin();
}

// zeroes out the memory for the buffer that stores the pid responses
void zero_pid_buffer()
{
	for (int i = 0; i < PARAMETER_COUNT; i++)
	{
		obd_result.PID_RESPONSE[i] = (uint64_t)0;
	}
}

// runs once when the microcontroller starts
void setup()
{
	// activate the virtual usb (CDC) port
	configure_usb_serial();

	// set the voltage sensing pin as an input
	pinMode(GPIO_VSENSE, INPUT);

	// clear the pid result buffer
	zero_pid_buffer();

	// configure CAN and ISO-TP
	setup_transport(CAN_REQUEST_ID, CAN_RESPONSE_ID, CAN_DATA_RATE);

	// set the operating mode as ISO-TP
	set_transport_mode(MODE_ISOTP);

	// assign receive_handler to be called whenever a valid ISO-TP message is available
	register_receive_handler(receive_handler_isotp);

	// configure networking and http server
	WiFi.softAP("OkayCAN-OBD");
	dns_server.start(53, "*", WiFi.softAPIP());
	setup_http();
}

// converts a nibble into its char-representation, and stores it into *dest
void write_nibble(uint8_t *dest, uint8_t nibble)
{
	*dest = 0x30 + nibble;
	if (*dest > 0x39)
	{
		*dest += 7;
	}
}

// creates a snapshot of the OBD PID responses as a string, that is ready to be served over http
void report_obd_data()
{
	// store timestamp and battery voltage
	obd_result.MSG_TIMESTAMP = millis();
	obd_result.VBATT_MV = read_vcc_mv();

	// generate stringified buffer to deliver over http
	uint8_t *obd_result_as_bytes = reinterpret_cast<uint8_t *>(&obd_result);
	for (int i = 0; i < sizeof(obd_result); i++)
	{
		write_nibble(&result_buffer_text[i * 2], (obd_result_as_bytes[i] >> 4));
		write_nibble(&result_buffer_text[i * 2 + 1], (obd_result_as_bytes[i] & 0xF));
	}

	// null-terminate text buffer
	result_buffer_text[sizeof(result_buffer_text) - 1] = 0;

	// dump result into serial for debugging
	USBSerial.write(result_buffer_text, sizeof(result_buffer_text) - 1);
	USBSerial.println();
}

// runs in a loop indefinitely
void loop()
{
	// process incoming DNS requests
	dns_server.processNextRequest();

	// check the CAN inbox, and try to assemble any ISO-TP messages
	poll_transport();

	// sends a pid request. this delay could be further shortened, though 100ms seems to work
	if ((millis() - last_query_ms) > 100)
	{
		last_query_ms = millis();

		// sends a obd read request
		send_read_query(parameters_to_read[parameter_request_index]);

		// increment the parameter index to send a different parameter on the next loop
		parameter_request_index++;
		parameter_request_index %= PARAMETER_COUNT;

		// if a cycle is complete, snapshot the received data
		if (parameter_request_index == 0)
		{
			report_obd_data();
		}
	}
}