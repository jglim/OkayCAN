EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L JG_Common:ESP32-S2-WROOM U1
U 1 1 615AA385
P 2850 2600
F 0 "U1" H 2850 4067 50  0000 C CNN
F 1 "ESP32-S2-WROOM" H 2850 3976 50  0000 C CNN
F 2 "JGCommonFootprintLibrary:XCVR_ESP32-S2-WROOM" H 2850 2600 50  0001 L BNN
F 3 "" H 2850 2600 50  0001 L BNN
F 4 "Espressif Systems" H 2850 2600 50  0001 L BNN "MANUFACTURER"
F 5 "3.45mm" H 2850 2600 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "Manufacturer Recommendations" H 2850 2600 50  0001 L BNN "STANDARD"
F 7 "V1.0" H 2850 2600 50  0001 L BNN "PARTREV"
F 8 "https://lcsc.com/product-detail/WiFi-Modules_Espressif-Systems-ESP32-S2-WROOM-4M_C967025.html" H 2850 2600 50  0001 C CNN "URL"
F 9 "C967025" H 2850 2600 50  0001 C CNN "LCSC"
	1    2850 2600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 615AEE32
P 7550 1050
F 0 "#PWR0101" H 7550 900 50  0001 C CNN
F 1 "VCC" H 7565 1223 50  0000 C CNN
F 2 "" H 7550 1050 50  0001 C CNN
F 3 "" H 7550 1050 50  0001 C CNN
	1    7550 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 615AF4CD
P 7850 1200
F 0 "R7" V 7643 1200 50  0000 C CNN
F 1 "100K" V 7734 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7780 1200 50  0001 C CNN
F 3 "~" H 7850 1200 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_100KR-1003-1_C96346.html" V 7850 1200 50  0001 C CNN "URL"
F 5 "C96346" V 7850 1200 50  0001 C CNN "LCSC"
	1    7850 1200
	0    1    1    0   
$EndComp
$Comp
L JG_Common:MT1470 U3
U 1 1 615AFDF7
P 8800 1400
F 0 "U3" H 8800 835 50  0000 C CNN
F 1 "MT1470" H 8800 926 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 8800 1500 50  0001 C CNN
F 3 "" H 8800 1500 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/DC-DC-Converters_XI-AN-Aerosemi-Tech-MT1470_C181781.html" H 8800 1400 50  0001 C CNN "URL"
F 5 "C181781" H 8800 1400 50  0001 C CNN "LCSC"
	1    8800 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 615B02A6
P 10450 1100
F 0 "C5" V 10198 1100 50  0000 C CNN
F 1 "22uF" V 10289 1100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10488 950 50  0001 C CNN
F 3 "~" H 10450 1100 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Samsung-Electro-Mechanics-CL21A226MAQNNNE_C45783.html" H 10450 1100 50  0001 C CNN "URL"
F 5 "C45783" V 10450 1100 50  0001 C CNN "LCSC"
	1    10450 1100
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 615B1E04
P 10450 1750
F 0 "C6" V 10198 1750 50  0000 C CNN
F 1 "22uF" V 10289 1750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10488 1600 50  0001 C CNN
F 3 "~" H 10450 1750 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Samsung-Electro-Mechanics-CL21A226MAQNNNE_C45783.html" H 10450 1750 50  0001 C CNN "URL"
F 5 "C45783" V 10450 1750 50  0001 C CNN "LCSC"
	1    10450 1750
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 615B2459
P 10450 2250
F 0 "C7" V 10198 2250 50  0000 C CNN
F 1 "22uF" V 10289 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10488 2100 50  0001 C CNN
F 3 "~" H 10450 2250 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Samsung-Electro-Mechanics-CL21A226MAQNNNE_C45783.html" H 10450 2250 50  0001 C CNN "URL"
F 5 "C45783" V 10450 2250 50  0001 C CNN "LCSC"
	1    10450 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 615B3006
P 9850 2050
F 0 "R9" H 9780 2004 50  0000 R CNN
F 1 "100K" H 9780 2095 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9780 2050 50  0001 C CNN
F 3 "~" H 9850 2050 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_100KR-1003-1_C96346.html" V 9850 2050 50  0001 C CNN "URL"
F 5 "C96346" H 9850 2050 50  0001 C CNN "LCSC"
	1    9850 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 615B33DA
P 9850 2450
F 0 "R10" H 9780 2404 50  0000 R CNN
F 1 "31.6K" H 9780 2495 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9780 2450 50  0001 C CNN
F 3 "~" H 9850 2450 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_YAGEO-AC0805FR-0731K6L_C228743.html" V 9850 2450 50  0001 C CNN "URL"
F 5 "C228743" H 9850 2450 50  0001 C CNN "LCSC"
	1    9850 2450
	-1   0    0    1   
$EndComp
Text GLabel 8400 1100 0    50   Input ~ 0
MT_FB
Wire Wire Line
	8400 1100 8500 1100
Wire Wire Line
	8000 1200 8500 1200
Wire Wire Line
	7550 1050 7550 1200
Wire Wire Line
	7550 1200 7700 1200
$Comp
L Device:C C4
U 1 1 615B4328
P 8800 1750
F 0 "C4" V 8548 1750 50  0000 C CNN
F 1 "1uF" V 8639 1750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8838 1600 50  0001 C CNN
F 3 "~" H 8800 1750 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Samsung-Electro-Mechanics-CL21B105KBFNNNE_C28323.html" H 8800 1750 50  0001 C CNN "URL"
F 5 "C28323" V 8800 1750 50  0001 C CNN "LCSC"
	1    8800 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 1300 8450 1300
Wire Wire Line
	8450 1300 8450 1750
Wire Wire Line
	8450 1750 8650 1750
$Comp
L power:+3V3 #PWR0102
U 1 1 615B6099
P 9850 1600
F 0 "#PWR0102" H 9850 1450 50  0001 C CNN
F 1 "+3V3" H 9865 1773 50  0000 C CNN
F 2 "" H 9850 1600 50  0001 C CNN
F 3 "" H 9850 1600 50  0001 C CNN
	1    9850 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 615B6D6C
P 9600 1750
F 0 "L1" V 9419 1750 50  0000 C CNN
F 1 "10uH" V 9510 1750 50  0000 C CNN
F 2 "JGCommonFootprintLibrary:CHILSIN-LVF303012" H 9600 1750 50  0001 C CNN
F 3 "~" H 9600 1750 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Power-Inductors_Chilisin-Elec-LVF303012-100M-N_C142153.html" V 9600 1750 50  0001 C CNN "URL"
F 5 "C142153" V 9600 1750 50  0001 C CNN "LCSC"
	1    9600 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 1200 9300 1750
Wire Wire Line
	9450 1750 9300 1750
Connection ~ 9300 1750
Wire Wire Line
	9850 1600 9850 1750
Wire Wire Line
	9850 1750 9750 1750
Wire Wire Line
	9850 1750 9850 1900
Connection ~ 9850 1750
Wire Wire Line
	9850 2200 9850 2250
Text GLabel 9750 2250 0    50   Input ~ 0
MT_FB
Wire Wire Line
	9750 2250 9850 2250
Connection ~ 9850 2250
Wire Wire Line
	9850 2250 9850 2300
$Comp
L power:GND #PWR0103
U 1 1 615BB56D
P 9150 1350
F 0 "#PWR0103" H 9150 1100 50  0001 C CNN
F 1 "GND" H 9155 1177 50  0000 C CNN
F 2 "" H 9150 1350 50  0001 C CNN
F 3 "" H 9150 1350 50  0001 C CNN
	1    9150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1750 9300 1750
Wire Wire Line
	9100 1200 9300 1200
Wire Wire Line
	9100 1300 9150 1300
Wire Wire Line
	9150 1300 9150 1350
$Comp
L power:VCC #PWR0104
U 1 1 615BDC69
P 9850 1000
F 0 "#PWR0104" H 9850 850 50  0001 C CNN
F 1 "VCC" H 9865 1173 50  0000 C CNN
F 2 "" H 9850 1000 50  0001 C CNN
F 3 "" H 9850 1000 50  0001 C CNN
	1    9850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1000 9850 1100
Wire Wire Line
	9850 1100 10300 1100
Wire Wire Line
	9850 1100 9100 1100
Connection ~ 9850 1100
Wire Wire Line
	10300 1750 10200 1750
Wire Wire Line
	10200 1750 10200 2250
Wire Wire Line
	10200 2250 10300 2250
Connection ~ 10200 1750
Wire Wire Line
	10200 1750 9850 1750
$Comp
L power:GND #PWR0105
U 1 1 615C2DBB
P 10750 2750
F 0 "#PWR0105" H 10750 2500 50  0001 C CNN
F 1 "GND" H 10755 2577 50  0000 C CNN
F 2 "" H 10750 2750 50  0001 C CNN
F 3 "" H 10750 2750 50  0001 C CNN
	1    10750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 2750 10750 2650
Wire Wire Line
	10750 1100 10600 1100
Wire Wire Line
	10600 1750 10750 1750
Connection ~ 10750 1750
Wire Wire Line
	10750 1750 10750 1100
Wire Wire Line
	10600 2250 10750 2250
Connection ~ 10750 2250
Wire Wire Line
	10750 2250 10750 1750
Wire Wire Line
	9850 2600 9850 2650
Wire Wire Line
	9850 2650 10750 2650
Connection ~ 10750 2650
Wire Wire Line
	10750 2650 10750 2250
Text Notes 7050 3000 0    50   ~ 0
Takes in VCC from either USB (4.6V) or OBD2 (11.6V)\n\nAfter passing through "OR" diodes at USB/OBD2,\nVCC drops by about 0.2-0.4V\n\nFeedback resistor:\nVout = Vsrc * Rgnd / (Rsrc + Rgnd)\n0.8 = Vsrc * 31.6 / (100 + 31.6)\nVsrc = 3.33
$Comp
L JG_Common:TYPE-C-31-M-12 J2
U 1 1 615AB613
P 8650 3900
F 0 "J2" H 8650 4567 50  0000 C CNN
F 1 "TYPE-C-31-M-12" H 8650 4476 50  0000 C CNN
F 2 "JGCommonFootprintLibrary:HRO_TYPE-C-31-M-12" H 8650 3900 50  0001 L BNN
F 3 "" H 8650 3900 50  0001 L BNN
F 4 "3.31mm" H 8650 3900 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Manufacturer Recommendations" H 8650 3900 50  0001 L BNN "STANDARD"
F 6 "A" H 8650 3900 50  0001 L BNN "PARTREV"
F 7 "HRO Electronics" H 8650 3900 50  0001 L BNN "MANUFACTURER"
F 8 "https://lcsc.com/product-detail/USB-Connectors_Korean-Hroparts-Elec-TYPE-C-31-M-12_C165948.html" H 8650 3900 50  0001 C CNN "URL"
F 9 "C165948" H 8650 3900 50  0001 C CNN "LCSC"
	1    8650 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 615AC4F3
P 7500 4150
F 0 "R6" H 7430 4104 50  0000 R CNN
F 1 "5.1K" H 7430 4195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7430 4150 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_PANASONIC-ERJ6RBD5101V_C336831.html" V 7500 4150 50  0001 C CNN "URL"
F 5 "C336831" H 7500 4150 50  0001 C CNN "LCSC"
	1    7500 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 615AD16E
P 9650 4300
F 0 "R8" H 9580 4254 50  0000 R CNN
F 1 "5.1K" H 9580 4345 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9580 4300 50  0001 C CNN
F 3 "~" H 9650 4300 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_PANASONIC-ERJ6RBD5101V_C336831.html" V 9650 4300 50  0001 C CNN "URL"
F 5 "C336831" H 9650 4300 50  0001 C CNN "LCSC"
	1    9650 4300
	-1   0    0    1   
$EndComp
NoConn ~ 9350 4200
NoConn ~ 9350 3700
NoConn ~ 7950 4000
$Comp
L power:VCC #PWR0106
U 1 1 615AE500
P 9800 3400
F 0 "#PWR0106" H 9800 3250 50  0001 C CNN
F 1 "VCC" H 9815 3573 50  0000 C CNN
F 2 "" H 9800 3400 50  0001 C CNN
F 3 "" H 9800 3400 50  0001 C CNN
	1    9800 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 615AFA1B
P 9650 4600
F 0 "#PWR0107" H 9650 4350 50  0001 C CNN
F 1 "GND" H 9655 4427 50  0000 C CNN
F 2 "" H 9650 4600 50  0001 C CNN
F 3 "" H 9650 4600 50  0001 C CNN
	1    9650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4300 9450 4300
Wire Wire Line
	9450 4300 9450 4550
Wire Wire Line
	9350 4000 9650 4000
Wire Wire Line
	9650 4000 9650 4150
Wire Wire Line
	9650 4450 9650 4550
Wire Wire Line
	7950 3700 7500 3700
Wire Wire Line
	7500 3700 7500 4000
$Comp
L power:GND #PWR0108
U 1 1 615B48C2
P 7500 4350
F 0 "#PWR0108" H 7500 4100 50  0001 C CNN
F 1 "GND" H 7505 4177 50  0000 C CNN
F 2 "" H 7500 4350 50  0001 C CNN
F 3 "" H 7500 4350 50  0001 C CNN
	1    7500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4300 7500 4350
Text GLabel 9950 4000 3    50   Input ~ 0
USB_DP
Text GLabel 7900 3800 0    50   Input ~ 0
USB_DP
Wire Wire Line
	7900 3800 7950 3800
Text GLabel 9950 3700 1    50   Input ~ 0
USB_DN
Text GLabel 7900 3900 0    50   Input ~ 0
USB_DN
Wire Wire Line
	7900 3900 7950 3900
$Comp
L Device:D D2
U 1 1 615BDD26
P 9550 3500
F 0 "D2" H 9550 3283 50  0000 C CNN
F 1 "DFLS130L" H 9550 3374 50  0000 C CNN
F 2 "Diode_SMD:D_PowerDI-123" H 9550 3500 50  0001 C CNN
F 3 "~" H 9550 3500 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Schottky-Barrier-Diodes-SBD_Diodes-Incorporated-DFLS130L-7_C110493.html" H 9550 3500 50  0001 C CNN "URL"
F 5 "C110493" H 9550 3500 50  0001 C CNN "LCSC"
	1    9550 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9800 3400 9800 3500
Wire Wire Line
	9800 3500 9700 3500
Wire Wire Line
	9400 3500 9350 3500
Text GLabel 3550 2100 2    50   Input ~ 0
USB_DN
Wire Wire Line
	3550 2100 3450 2100
Text GLabel 3550 2200 2    50   Input ~ 0
USB_DP
Wire Wire Line
	3550 2200 3450 2200
$Comp
L power:+3V3 #PWR0109
U 1 1 615C36B0
P 3550 1300
F 0 "#PWR0109" H 3550 1150 50  0001 C CNN
F 1 "+3V3" H 3565 1473 50  0000 C CNN
F 2 "" H 3550 1300 50  0001 C CNN
F 3 "" H 3550 1300 50  0001 C CNN
	1    3550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1300 3550 1400
Wire Wire Line
	3550 1400 3450 1400
$Comp
L power:GND #PWR0110
U 1 1 615C50FD
P 3550 3900
F 0 "#PWR0110" H 3550 3650 50  0001 C CNN
F 1 "GND" H 3555 3727 50  0000 C CNN
F 2 "" H 3550 3900 50  0001 C CNN
F 3 "" H 3550 3900 50  0001 C CNN
	1    3550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3800 3550 3800
Wire Wire Line
	3550 3800 3550 3900
Text Notes 7000 600  0    50   ~ 10
Voltage Regulator
Text Notes 7000 3250 0    50   ~ 10
Connectors : USB-C, JST-XH
Text Notes 550  600  0    50   ~ 10
ESP32-S2
Wire Notes Line
	6950 6550 6950 500 
$Comp
L power:+3V3 #PWR0111
U 1 1 615DDA44
P 1100 1100
F 0 "#PWR0111" H 1100 950 50  0001 C CNN
F 1 "+3V3" H 1115 1273 50  0000 C CNN
F 2 "" H 1100 1100 50  0001 C CNN
F 3 "" H 1100 1100 50  0001 C CNN
	1    1100 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 615DDD79
P 1100 1350
F 0 "R1" H 1030 1304 50  0000 R CNN
F 1 "10K" H 1030 1395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1030 1350 50  0001 C CNN
F 3 "~" H 1100 1350 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_YAGEO-RC0805FR-0710KL_C84376.html" V 1100 1350 50  0001 C CNN "URL"
F 5 "C84376" H 1100 1350 50  0001 C CNN "LCSC"
	1    1100 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 1100 1100 1200
Wire Wire Line
	1100 1600 1100 1500
$Comp
L power:GND #PWR0112
U 1 1 615E1DEE
P 1100 2100
F 0 "#PWR0112" H 1100 1850 50  0001 C CNN
F 1 "GND" H 1105 1927 50  0000 C CNN
F 2 "" H 1100 2100 50  0001 C CNN
F 3 "" H 1100 2100 50  0001 C CNN
	1    1100 2100
	1    0    0    -1  
$EndComp
Connection ~ 1100 1600
Text GLabel 1000 1600 0    50   Input ~ 0
ESP_EN
Wire Wire Line
	1000 1600 1100 1600
Text GLabel 2150 2100 0    50   Input ~ 0
ESP_BOOT
Wire Wire Line
	2250 2100 2150 2100
$Comp
L Device:C C1
U 1 1 615FAF0A
P 1100 1900
F 0 "C1" H 900 2000 50  0000 C CNN
F 1 "0.1uF" H 850 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1138 1750 50  0001 C CNN
F 3 "~" H 1100 1900 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_TORCH-CT41G-0805-2X1-50V-0-1-F-M-N_C138340.html" H 1100 1900 50  0001 C CNN "URL"
F 5 "C138340" H 1100 1900 50  0001 C CNN "LCSC"
	1    1100 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1750 1100 1600
Wire Wire Line
	1100 2100 1100 2050
$Comp
L Switch:SW_Push SW1
U 1 1 61608769
P 5800 1150
F 0 "SW1" H 5800 1435 50  0000 C CNN
F 1 "SW_Push" H 5800 1344 50  0000 C CNN
F 2 "JGCommonFootprintLibrary:HRO-K2-1807" H 5800 1350 50  0001 C CNN
F 3 "~" H 5800 1350 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Tactile-Switches_Korean-Hroparts-Elec-K2-1807UA-A4DW-06_C502307.html" H 5800 1150 50  0001 C CNN "URL"
F 5 "C502307" H 5800 1150 50  0001 C CNN "LCSC"
	1    5800 1150
	1    0    0    -1  
$EndComp
Text Notes 4400 600  0    50   ~ 10
Boot, Reset Button
$Comp
L power:GND #PWR0113
U 1 1 6160926E
P 6050 1250
F 0 "#PWR0113" H 6050 1000 50  0001 C CNN
F 1 "GND" H 6055 1077 50  0000 C CNN
F 2 "" H 6050 1250 50  0001 C CNN
F 3 "" H 6050 1250 50  0001 C CNN
	1    6050 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1150 6050 1150
Wire Wire Line
	6050 1150 6050 1250
Text GLabel 5400 1150 0    50   Input ~ 0
ESP_BOOT
Wire Wire Line
	5400 1150 5500 1150
$Comp
L Connector:TestPoint TP3
U 1 1 6160F22E
P 5500 1300
F 0 "TP3" H 5442 1326 50  0000 R CNN
F 1 "TP_BOOT" H 5442 1417 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5700 1300 50  0001 C CNN
F 3 "~" H 5700 1300 50  0001 C CNN
	1    5500 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 1150 5500 1300
Connection ~ 5500 1150
Wire Wire Line
	5500 1150 5600 1150
$Comp
L Switch:SW_Push SW2
U 1 1 61617D00
P 5800 1950
F 0 "SW2" H 5800 2235 50  0000 C CNN
F 1 "SW_Push" H 5800 2144 50  0000 C CNN
F 2 "JGCommonFootprintLibrary:HRO-K2-1807" H 5800 2150 50  0001 C CNN
F 3 "~" H 5800 2150 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Tactile-Switches_Korean-Hroparts-Elec-K2-1807UA-A4DW-06_C502307.html" H 5800 1950 50  0001 C CNN "URL"
F 5 "C502307" H 5800 1950 50  0001 C CNN "LCSC"
	1    5800 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61617D0A
P 6050 2050
F 0 "#PWR0114" H 6050 1800 50  0001 C CNN
F 1 "GND" H 6055 1877 50  0000 C CNN
F 2 "" H 6050 2050 50  0001 C CNN
F 3 "" H 6050 2050 50  0001 C CNN
	1    6050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1950 6050 1950
Wire Wire Line
	6050 1950 6050 2050
Text GLabel 5400 1950 0    50   Input ~ 0
ESP_EN
Wire Wire Line
	5400 1950 5500 1950
$Comp
L Connector:TestPoint TP4
U 1 1 61617D18
P 5500 2100
F 0 "TP4" H 5442 2126 50  0000 R CNN
F 1 "TP_RESET" H 5442 2217 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5700 2100 50  0001 C CNN
F 3 "~" H 5700 2100 50  0001 C CNN
	1    5500 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 1950 5500 2100
Connection ~ 5500 1950
Wire Wire Line
	5500 1950 5600 1950
$Comp
L JG_Common:OBD2_Connector J1
U 1 1 6162C801
P 8000 5700
F 0 "J1" H 8000 6365 50  0000 C CNN
F 1 "OBD2_Connector" H 8000 6274 50  0000 C CNN
F 2 "JGCommonFootprintLibrary:OBD-Male" H 7950 6200 50  0001 C CNN
F 3 "" H 7950 6200 50  0001 C CNN
	1    8000 5700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0115
U 1 1 6162E0A7
P 10700 5200
F 0 "#PWR0115" H 10700 5050 50  0001 C CNN
F 1 "VCC" H 10715 5373 50  0000 C CNN
F 2 "" H 10700 5200 50  0001 C CNN
F 3 "" H 10700 5200 50  0001 C CNN
	1    10700 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:D D4
U 1 1 6162E0AE
P 10450 5300
F 0 "D4" H 10450 5083 50  0000 C CNN
F 1 "DFLS130L" H 10450 5174 50  0000 C CNN
F 2 "Diode_SMD:D_PowerDI-123" H 10450 5300 50  0001 C CNN
F 3 "~" H 10450 5300 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Schottky-Barrier-Diodes-SBD_Diodes-Incorporated-DFLS130L-7_C110493.html" H 10450 5300 50  0001 C CNN "URL"
F 5 "C110493" H 10450 5300 50  0001 C CNN "LCSC"
	1    10450 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	10700 5200 10700 5300
Wire Wire Line
	10700 5300 10600 5300
NoConn ~ 7350 5300
NoConn ~ 7350 5400
NoConn ~ 7350 5500
NoConn ~ 7350 5600
NoConn ~ 7350 5700
NoConn ~ 7350 5800
NoConn ~ 7350 5900
NoConn ~ 7350 6050
NoConn ~ 7350 6150
NoConn ~ 8650 6150
NoConn ~ 8650 5500
NoConn ~ 8650 5600
$Comp
L Connector:TestPoint TP7
U 1 1 6164666B
P 9150 6000
F 0 "TP7" H 9092 6026 50  0000 R CNN
F 1 "TP_CANL" H 9092 6117 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9350 6000 50  0001 C CNN
F 3 "~" H 9350 6000 50  0001 C CNN
	1    9150 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 5900 9150 5900
Wire Wire Line
	9150 5900 9150 6000
$Comp
L Connector:TestPoint TP6
U 1 1 6164AE5A
P 9150 5700
F 0 "TP6" H 9250 5850 50  0000 L CNN
F 1 "TP_CANH" H 9250 5750 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9350 5700 50  0001 C CNN
F 3 "~" H 9350 5700 50  0001 C CNN
	1    9150 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5800 9150 5800
Wire Wire Line
	9150 5800 9150 5700
Text GLabel 9700 5800 2    50   Input ~ 0
CAN_H
Wire Wire Line
	9700 5800 9150 5800
Connection ~ 9150 5800
Text GLabel 9700 5900 2    50   Input ~ 0
CAN_L
Wire Wire Line
	9700 5900 9150 5900
Connection ~ 9150 5900
$Comp
L power:GND #PWR0116
U 1 1 61654727
P 8850 6150
F 0 "#PWR0116" H 8850 5900 50  0001 C CNN
F 1 "GND" H 8855 5977 50  0000 C CNN
F 2 "" H 8850 6150 50  0001 C CNN
F 3 "" H 8850 6150 50  0001 C CNN
	1    8850 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 6050 8850 6050
Wire Wire Line
	8850 6050 8850 6150
Text Notes 4400 5000 0    50   ~ 10
Voltage Sense
$Comp
L power:VCC #PWR0117
U 1 1 6165745D
P 6300 5200
F 0 "#PWR0117" H 6300 5050 50  0001 C CNN
F 1 "VCC" H 6315 5373 50  0000 C CNN
F 2 "" H 6300 5200 50  0001 C CNN
F 3 "" H 6300 5200 50  0001 C CNN
	1    6300 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 616577F0
P 6300 6000
F 0 "#PWR0118" H 6300 5750 50  0001 C CNN
F 1 "GND" H 6305 5827 50  0000 C CNN
F 2 "" H 6300 6000 50  0001 C CNN
F 3 "" H 6300 6000 50  0001 C CNN
	1    6300 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6165A1A2
P 6300 5400
F 0 "R4" H 6230 5354 50  0000 R CNN
F 1 "10K" H 6230 5445 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 5400 50  0001 C CNN
F 3 "~" H 6300 5400 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_YAGEO-RC0805FR-0710KL_C84376.html" V 6300 5400 50  0001 C CNN "URL"
F 5 "C84376" H 6300 5400 50  0001 C CNN "LCSC"
	1    6300 5400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 6165B326
P 6300 5800
F 0 "R5" H 6230 5754 50  0000 R CNN
F 1 "1.6K" H 6230 5845 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6230 5800 50  0001 C CNN
F 3 "~" H 6300 5800 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-span-style-background-color-ff0-Resistor-span-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0805W8F1601T5E_C17394.html" V 6300 5800 50  0001 C CNN "URL"
F 5 "C17394" H 6300 5800 50  0001 C CNN "LCSC"
	1    6300 5800
	-1   0    0    1   
$EndComp
Text Notes 4450 6450 0    50   ~ 0
Scales 0-24V to 0-3.3V\nThis board is intended for 12V only\nActual input is about 0.2V higher\n\nPrefer ADC1 : GPIO1 - GPIO10\nADC2 is shared with WiFi
Wire Wire Line
	6300 5200 6300 5250
Wire Wire Line
	6300 5950 6300 6000
$Comp
L Connector:TestPoint TP5
U 1 1 61669C58
P 6000 5450
F 0 "TP5" H 5900 5600 50  0000 R CNN
F 1 "TP_SENSE" H 5900 5500 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6200 5450 50  0001 C CNN
F 3 "~" H 6200 5450 50  0001 C CNN
	1    6000 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5600 6000 5600
Wire Wire Line
	6000 5600 6000 5450
Text GLabel 5800 5600 0    50   Input ~ 0
VSENSE
Wire Wire Line
	6300 5600 6000 5600
Connection ~ 6000 5600
Text Notes 4400 3250 0    50   ~ 10
CAN Transceiver
$Comp
L Device:D_Zener D3
U 1 1 61692841
P 10200 5850
F 0 "D3" V 10200 5950 50  0000 L CNN
F 1 "MMSZ5254C-E3-08" V 10100 5950 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 10200 5850 50  0001 C CNN
F 3 "~" H 10200 5850 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Zener-Diodes_Vishay-Intertech-MMSZ5254C-E3-08_C241953.html" V 10200 5850 50  0001 C CNN "URL"
F 5 "C241953" V 10200 5850 50  0001 C CNN "LCSC"
	1    10200 5850
	0    1    1    0   
$EndComp
Text Notes 7050 6450 0    50   ~ 0
Optional zener footprint for overvoltage protection, unpopulated by default
$Comp
L Interface_CAN_LIN:SN65HVD230 U2
U 1 1 616B8F49
P 5900 3850
F 0 "U2" H 5800 4350 50  0000 R CNN
F 1 "SN65HVD230" H 5800 4250 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5900 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 5800 4250 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/CAN-ICs_Texas-Instruments-SN65HVD230DR_C12084.html" H 5900 3850 50  0001 C CNN "URL"
F 5 "C12084" H 5900 3850 50  0001 C CNN "LCSC"
	1    5900 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 616C0D53
P 10400 3800
F 0 "J3" H 10600 3550 50  0000 L CNN
F 1 "Conn_01x04" H 10250 3450 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-AM_1x04_P2.50mm_Vertical" H 10400 3800 50  0001 C CNN
F 3 "~" H 10400 3800 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Wire-To-Board-Wire-To-Wire-Connector_JST-Sales-America-B4B-XH-AM-LF-SN_C161871.html" H 10400 3800 50  0001 C CNN "URL"
F 5 "C161871" H 10400 3800 50  0001 C CNN "LCSC"
	1    10400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3800 9950 3800
Wire Wire Line
	9950 3700 9950 3800
Connection ~ 9950 3800
Wire Wire Line
	9950 3800 10200 3800
Wire Wire Line
	9350 3900 9950 3900
Wire Wire Line
	9950 3900 9950 4000
Connection ~ 9950 3900
Wire Wire Line
	9950 3900 10200 3900
Wire Wire Line
	10200 4000 10150 4000
Wire Wire Line
	10150 4000 10150 4550
Wire Wire Line
	10150 4550 9650 4550
Connection ~ 9650 4550
Wire Wire Line
	9650 4550 9450 4550
Wire Wire Line
	9650 4600 9650 4550
$Comp
L power:VCC #PWR0119
U 1 1 616DF5D8
P 10150 3400
F 0 "#PWR0119" H 10150 3250 50  0001 C CNN
F 1 "VCC" H 10165 3573 50  0000 C CNN
F 2 "" H 10150 3400 50  0001 C CNN
F 3 "" H 10150 3400 50  0001 C CNN
	1    10150 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3400 10150 3700
Wire Wire Line
	10150 3700 10200 3700
Text Notes 7050 4750 0    50   ~ 0
Optional JST-XH header in place of test points
Text Notes 7000 5000 0    50   ~ 10
Connectors : OBD
$Comp
L power:+3V3 #PWR0120
U 1 1 616ECE10
P 5900 3450
F 0 "#PWR0120" H 5900 3300 50  0001 C CNN
F 1 "+3V3" H 5915 3623 50  0000 C CNN
F 2 "" H 5900 3450 50  0001 C CNN
F 3 "" H 5900 3450 50  0001 C CNN
	1    5900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3450 5900 3550
$Comp
L power:GND #PWR0121
U 1 1 616F1A7D
P 5900 4350
F 0 "#PWR0121" H 5900 4100 50  0001 C CNN
F 1 "GND" H 5905 4177 50  0000 C CNN
F 2 "" H 5900 4350 50  0001 C CNN
F 3 "" H 5900 4350 50  0001 C CNN
	1    5900 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4350 5900 4300
Text GLabel 2150 2500 0    50   Input ~ 0
CAN_RX
Text GLabel 2150 2600 0    50   Input ~ 0
CAN_TX
Wire Wire Line
	2150 2500 2250 2500
Wire Wire Line
	2150 2600 2250 2600
Text GLabel 5450 3750 0    50   Input ~ 0
CAN_TX
Wire Wire Line
	5450 3750 5500 3750
Text GLabel 5450 3850 0    50   Input ~ 0
CAN_RX
Wire Wire Line
	5450 3850 5500 3850
NoConn ~ 5500 3950
Text GLabel 6350 3850 2    50   Input ~ 0
CAN_H
Wire Wire Line
	6350 3850 6300 3850
Text GLabel 6350 3950 2    50   Input ~ 0
CAN_L
Wire Wire Line
	6350 3950 6300 3950
Wire Wire Line
	5500 4050 5450 4050
Wire Wire Line
	5450 4050 5450 4300
Wire Wire Line
	5450 4300 5900 4300
Connection ~ 5900 4300
Wire Wire Line
	5900 4300 5900 4250
$Comp
L Device:C C2
U 1 1 615D54DD
P 1300 5750
F 0 "C2" H 1100 5850 50  0000 C CNN
F 1 "0.1uF" H 1050 5750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1338 5600 50  0001 C CNN
F 3 "~" H 1300 5750 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_TORCH-CT41G-0805-2X1-50V-0-1-F-M-N_C138340.html" H 1300 5750 50  0001 C CNN "URL"
F 5 "C138340" H 1300 5750 50  0001 C CNN "LCSC"
	1    1300 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0122
U 1 1 615D6207
P 1300 5500
F 0 "#PWR0122" H 1300 5350 50  0001 C CNN
F 1 "+3V3" H 1315 5673 50  0000 C CNN
F 2 "" H 1300 5500 50  0001 C CNN
F 3 "" H 1300 5500 50  0001 C CNN
	1    1300 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 615D6B3B
P 1300 5950
F 0 "#PWR0123" H 1300 5700 50  0001 C CNN
F 1 "GND" H 1305 5777 50  0000 C CNN
F 2 "" H 1300 5950 50  0001 C CNN
F 3 "" H 1300 5950 50  0001 C CNN
	1    1300 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5950 1300 5900
Wire Wire Line
	1300 5500 1300 5600
$Comp
L Device:C C3
U 1 1 615DFB0B
P 1800 5750
F 0 "C3" H 1600 5850 50  0000 C CNN
F 1 "0.1uF" H 1550 5750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1838 5600 50  0001 C CNN
F 3 "~" H 1800 5750 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_TORCH-CT41G-0805-2X1-50V-0-1-F-M-N_C138340.html" H 1800 5750 50  0001 C CNN "URL"
F 5 "C138340" H 1800 5750 50  0001 C CNN "LCSC"
	1    1800 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0124
U 1 1 615DFB15
P 1800 5500
F 0 "#PWR0124" H 1800 5350 50  0001 C CNN
F 1 "+3V3" H 1815 5673 50  0000 C CNN
F 2 "" H 1800 5500 50  0001 C CNN
F 3 "" H 1800 5500 50  0001 C CNN
	1    1800 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 615DFB1F
P 1800 5950
F 0 "#PWR0125" H 1800 5700 50  0001 C CNN
F 1 "GND" H 1805 5777 50  0000 C CNN
F 2 "" H 1800 5950 50  0001 C CNN
F 3 "" H 1800 5950 50  0001 C CNN
	1    1800 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5950 1800 5900
Wire Wire Line
	1800 5500 1800 5600
Text Notes 550  5000 0    50   ~ 10
Decoupling Caps
Text Notes 4450 4750 0    50   ~ 0
Rs to strong GND for sharp signal transitions
Wire Notes Line
	4350 500  4350 7800
Text GLabel 2150 2300 0    50   Input ~ 0
VSENSE
Wire Wire Line
	2150 2300 2250 2300
Text Notes 4450 3000 0    50   ~ 0
Entering USB DFU:\nPress Boot button\nPress and release Reset button\nRelease Boot button
Text Notes 4400 6700 0    50   ~ 10
CAN Termination
Text Notes 4450 7700 0    50   ~ 0
Optional; convenient for ECU emulation \nwhen paired with female OBD header\nNormally a single 120R is enough for a bus to function
Text GLabel 5450 7150 0    50   Input ~ 0
CAN_H
Text GLabel 5950 7150 2    50   Input ~ 0
CAN_L
$Comp
L Device:R R3
U 1 1 616B9830
P 5700 7150
F 0 "R3" V 5900 7200 50  0000 R CNN
F 1 "120R" V 5800 7200 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5630 7150 50  0001 C CNN
F 3 "~" H 5700 7150 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Ever-Ohms-Tech-HR1206J120RP05Z_C175512.html" V 5700 7150 50  0001 C CNN "URL"
F 5 "C175512" V 5700 7150 50  0001 C CNN "LCSC"
	1    5700 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 7150 5550 7150
Wire Wire Line
	5850 7150 5950 7150
Wire Notes Line
	4350 3100 11200 3100
Wire Wire Line
	6300 5550 6300 5600
Connection ~ 6300 5600
Wire Wire Line
	6300 5600 6300 5650
NoConn ~ 2250 2200
NoConn ~ 2250 2400
NoConn ~ 2250 2700
NoConn ~ 2250 2800
NoConn ~ 2250 2900
NoConn ~ 2250 3000
NoConn ~ 2250 3100
NoConn ~ 2250 3200
NoConn ~ 2250 3300
NoConn ~ 2250 3400
NoConn ~ 2250 3600
NoConn ~ 3450 3600
NoConn ~ 3450 3500
NoConn ~ 3450 3400
NoConn ~ 3450 3300
NoConn ~ 3450 3200
NoConn ~ 3450 3100
NoConn ~ 3450 3000
NoConn ~ 3450 2900
NoConn ~ 3450 2800
NoConn ~ 3450 2700
NoConn ~ 3450 2600
NoConn ~ 3450 2500
NoConn ~ 3450 2400
NoConn ~ 3450 2300
NoConn ~ 3450 2000
NoConn ~ 3450 1900
NoConn ~ 2250 3500
$Comp
L Connector:TestPoint TP2
U 1 1 61784798
P 2150 1800
F 0 "TP2" H 2050 1950 50  0000 R CNN
F 1 "TP_RX" H 2050 1850 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2350 1800 50  0001 C CNN
F 3 "~" H 2350 1800 50  0001 C CNN
	1    2150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1600 2250 1600
$Comp
L Connector:TestPoint TP1
U 1 1 61795039
P 1700 1850
F 0 "TP1" H 1600 2000 50  0000 R CNN
F 1 "TP_TX" H 1600 1900 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 1900 1850 50  0001 C CNN
F 3 "~" H 1900 1850 50  0001 C CNN
	1    1700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1900 1700 1900
Wire Wire Line
	1700 1900 1700 1850
Wire Wire Line
	2150 1800 2250 1800
$Comp
L power:GND #PWR0126
U 1 1 617B34C1
P 10200 6100
F 0 "#PWR0126" H 10200 5850 50  0001 C CNN
F 1 "GND" H 10205 5927 50  0000 C CNN
F 2 "" H 10200 6100 50  0001 C CNN
F 3 "" H 10200 6100 50  0001 C CNN
	1    10200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 6000 10200 6100
Wire Wire Line
	8650 5300 10200 5300
Connection ~ 10200 5300
Wire Wire Line
	10200 5300 10300 5300
Wire Wire Line
	10200 5300 10200 5700
Text Notes 10300 5950 0    31   ~ 6
OPTIONAL
Text Notes 5650 6900 0    31   ~ 6
OPTIONAL
Text Notes 6400 5550 0    31   ~ 6
OPTIONAL
Text Notes 6400 5950 0    31   ~ 6
OPTIONAL
Wire Notes Line
	500  4850 11200 4850
Text Notes 550  6700 0    50   ~ 10
Status LED
$Comp
L power:GND #PWR0127
U 1 1 6183AB10
P 1900 7200
F 0 "#PWR0127" H 1900 6950 50  0001 C CNN
F 1 "GND" H 1905 7027 50  0000 C CNN
F 2 "" H 1900 7200 50  0001 C CNN
F 3 "" H 1900 7200 50  0001 C CNN
	1    1900 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0128
U 1 1 6183A467
P 1050 7050
F 0 "#PWR0128" H 1050 6900 50  0001 C CNN
F 1 "+3V3" H 1065 7223 50  0000 C CNN
F 2 "" H 1050 7050 50  0001 C CNN
F 3 "" H 1050 7050 50  0001 C CNN
	1    1050 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 61842EAD
P 1650 7150
F 0 "D1" H 1643 6895 50  0000 C CNN
F 1 "LED" H 1643 6986 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1650 7150 50  0001 C CNN
F 3 "~" H 1650 7150 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Light-Emitting-Diodes-span-style-background-color-ff0-LED-span_Foshan-NationStar-Optoelectronics-NCD0805B2_C84259.html" H 1650 7150 50  0001 C CNN "URL"
F 5 "C84259" H 1650 7150 50  0001 C CNN "LCSC"
	1    1650 7150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 61843C07
P 1300 7150
F 0 "R2" H 1230 7104 50  0000 R CNN
F 1 "1.6K" H 1230 7195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 7150 50  0001 C CNN
F 3 "~" H 1300 7150 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-span-style-background-color-ff0-Resistor-span-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0805W8F1601T5E_C17394.html" V 1300 7150 50  0001 C CNN "URL"
F 5 "C17394" H 1300 7150 50  0001 C CNN "LCSC"
	1    1300 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 7050 1050 7150
Wire Wire Line
	1050 7150 1150 7150
Wire Wire Line
	1450 7150 1500 7150
Wire Wire Line
	1800 7150 1900 7150
Wire Wire Line
	1900 7150 1900 7200
Text Notes 550  7700 0    50   ~ 0
Indicator to check if the buck \nregulator is operating normally
Text Notes 550  4750 0    50   ~ 0
ESP32-S2 has USB capabilities with a USB DFU, so there is no need for a USB-UART\n\nESP32-S2-WROOM uses a PCB antenna (IPEX unpopulated)\nESP32-S2-WROOM-I is identical except that the IPEX is populated and connected\nThese 2 parts can be used interchangeably
$Comp
L power:+3V3 #PWR0129
U 1 1 6162EC93
P 7650 1800
F 0 "#PWR0129" H 7650 1650 50  0001 C CNN
F 1 "+3V3" H 7665 1973 50  0000 C CNN
F 2 "" H 7650 1800 50  0001 C CNN
F 3 "" H 7650 1800 50  0001 C CNN
	1    7650 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 6162F24E
P 7500 1900
F 0 "#PWR0130" H 7500 1650 50  0001 C CNN
F 1 "GND" H 7505 1727 50  0000 C CNN
F 2 "" H 7500 1900 50  0001 C CNN
F 3 "" H 7500 1900 50  0001 C CNN
	1    7500 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 6162F753
P 7650 1850
F 0 "TP9" H 7550 2000 50  0000 R CNN
F 1 "TP_3V3" H 7550 1900 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7850 1850 50  0001 C CNN
F 3 "~" H 7850 1850 50  0001 C CNN
	1    7650 1850
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 61635824
P 7500 1850
F 0 "TP8" H 7400 2000 50  0000 R CNN
F 1 "TP_GND" H 7400 1900 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7700 1850 50  0001 C CNN
F 3 "~" H 7700 1850 50  0001 C CNN
	1    7500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1900 7500 1850
Wire Wire Line
	7650 1800 7650 1850
Text Notes 7000 7000 0    50   ~ 0
For next revision (1.1):\nThicken traces for switching regulator\nPin 1 markings for U footprints\nEdge cuts: shift 1.8mm to 2.1mm towards USB side for better enclosure fit\nEdge cuts: reduce protrusion at OBD connector to fit enclosure, shift or remove 2x CAN TP
Text Notes 5650 6850 0    31   ~ 6
DO NOT POPULATE FOR NORMAL USE
Text Notes 7350 7500 0    79   Italic 16
OkayCAN
Text Notes 10600 7650 0    71   Italic 0
1.1
Text Notes 8150 7650 0    71   Italic 0
01-11-2021
$Comp
L power:GND #PWR0131
U 1 1 61800F84
P 3750 7200
F 0 "#PWR0131" H 3750 6950 50  0001 C CNN
F 1 "GND" H 3755 7027 50  0000 C CNN
F 2 "" H 3750 7200 50  0001 C CNN
F 3 "" H 3750 7200 50  0001 C CNN
	1    3750 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 61800F9A
P 3500 7150
F 0 "D5" H 3493 6895 50  0000 C CNN
F 1 "LED" H 3493 6986 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3500 7150 50  0001 C CNN
F 3 "~" H 3500 7150 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Light-Emitting-Diodes-span-style-background-color-ff0-LED-span_Foshan-NationStar-Optoelectronics-NCD0805B2_C84259.html" H 3500 7150 50  0001 C CNN "URL"
F 5 "C84259" H 3500 7150 50  0001 C CNN "LCSC"
	1    3500 7150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 61800FA6
P 3150 7150
F 0 "R11" H 3080 7104 50  0000 R CNN
F 1 "1.6K" H 3080 7195 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3080 7150 50  0001 C CNN
F 3 "~" H 3150 7150 50  0001 C CNN
F 4 "https://lcsc.com/product-detail/Chip-span-style-background-color-ff0-Resistor-span-Surface-Mount_UNI-ROYAL-Uniroyal-Elec-0805W8F1601T5E_C17394.html" V 3150 7150 50  0001 C CNN "URL"
F 5 "C17394" H 3150 7150 50  0001 C CNN "LCSC"
	1    3150 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 7150 3000 7150
Wire Wire Line
	3300 7150 3350 7150
Wire Wire Line
	3650 7150 3750 7150
Wire Wire Line
	3750 7150 3750 7200
Text GLabel 2900 7150 0    50   Input ~ 0
LED_PIN
Text Notes 2350 7700 0    50   ~ 0
User-controlled LED pin
Text GLabel 3550 1800 2    50   Input ~ 0
LED_PIN
Wire Notes Line
	2250 6550 2250 7800
Wire Notes Line
	500  6550 6900 6550
Wire Wire Line
	3550 1800 3450 1800
$EndSCHEMATC
