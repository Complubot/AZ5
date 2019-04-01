EESchema Schematic File Version 4
LIBS:ATtiny_2.0-cache
EELAYER 26 0
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
L MCU_Microchip_ATtiny:ATtiny1634-SU U1
U 1 1 5C585CD3
P 5350 3750
F 0 "U1" H 4820 3796 50  0000 R CNN
F 1 "ATtiny1634-SU" H 4820 3705 50  0000 R CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 5350 3750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8303-8-bit-AVR-Microcontroller-tinyAVR-ATtiny1634_Datasheet.pdf" H 5350 3750 50  0001 C CNN
	1    5350 3750
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR03
U 1 1 5C5867D4
P 5350 5050
F 0 "#PWR03" H 5350 4800 50  0001 C CNN
F 1 "Earth" H 5350 4900 50  0001 C CNN
F 2 "" H 5350 5050 50  0001 C CNN
F 3 "~" H 5350 5050 50  0001 C CNN
	1    5350 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5C586830
P 5350 1950
F 0 "#PWR02" H 5350 1800 50  0001 C CNN
F 1 "+5V" H 5365 2123 50  0000 C CNN
F 2 "" H 5350 1950 50  0001 C CNN
F 3 "" H 5350 1950 50  0001 C CNN
	1    5350 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5C586BEE
P 6950 4650
F 0 "Y1" V 6904 4781 50  0000 L CNN
F 1 "Crystal 16MHz" V 6995 4781 50  0000 L CNN
F 2 "Compluino_03:Crystal" H 6950 4650 50  0001 C CNN
F 3 "~" H 6950 4650 50  0001 C CNN
	1    6950 4650
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5C586CEF
P 7900 4450
F 0 "C3" V 7648 4450 50  0000 C CNN
F 1 "C22pF" V 7739 4450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7938 4300 50  0001 C CNN
F 3 "~" H 7900 4450 50  0001 C CNN
	1    7900 4450
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5C586D90
P 7900 4900
F 0 "C4" V 7648 4900 50  0000 C CNN
F 1 "C22pF" V 7739 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7938 4750 50  0001 C CNN
F 3 "~" H 7900 4900 50  0001 C CNN
	1    7900 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 4900 6950 4800
Wire Wire Line
	6950 4500 6950 4450
Wire Wire Line
	6950 4450 7750 4450
Wire Wire Line
	7750 4900 6950 4900
Wire Wire Line
	8050 4450 8050 4900
Wire Wire Line
	6950 4450 6700 4450
Wire Wire Line
	6700 4450 6700 4550
Wire Wire Line
	6700 4550 5950 4550
Connection ~ 6950 4450
Wire Wire Line
	6950 4900 6700 4900
Wire Wire Line
	6700 4900 6700 4650
Wire Wire Line
	6700 4650 5950 4650
Connection ~ 6950 4900
$Comp
L power:Earth #PWR08
U 1 1 5C587055
P 8050 5100
F 0 "#PWR08" H 8050 4850 50  0001 C CNN
F 1 "Earth" H 8050 4950 50  0001 C CNN
F 2 "" H 8050 5100 50  0001 C CNN
F 3 "~" H 8050 5100 50  0001 C CNN
	1    8050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5100 8050 4900
Connection ~ 8050 4900
$Comp
L Device:C C1
U 1 1 5C587234
P 5600 2150
F 0 "C1" H 5650 2250 50  0000 L CNN
F 1 "C100nF" H 5600 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5638 2000 50  0001 C CNN
F 3 "~" H 5600 2150 50  0001 C CNN
	1    5600 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5C5872D8
P 5950 2150
F 0 "C2" H 6000 2250 50  0000 L CNN
F 1 "CP47uF" H 6000 2050 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.3" H 5988 2000 50  0001 C CNN
F 3 "~" H 5950 2150 50  0001 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2000 5950 2000
Wire Wire Line
	5600 2000 5350 2000
Connection ~ 5600 2000
Wire Wire Line
	5350 1950 5350 2000
Connection ~ 5350 2000
Wire Wire Line
	5600 2300 5800 2300
$Comp
L power:Earth #PWR04
U 1 1 5C587F29
P 5800 2400
F 0 "#PWR04" H 5800 2150 50  0001 C CNN
F 1 "Earth" H 5800 2250 50  0001 C CNN
F 2 "" H 5800 2400 50  0001 C CNN
F 3 "~" H 5800 2400 50  0001 C CNN
	1    5800 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2400 5800 2300
Connection ~ 5800 2300
Wire Wire Line
	5800 2300 5950 2300
Text GLabel 6200 4450 2    50   Input ~ 0
RESET
Wire Wire Line
	6200 4450 5950 4450
$Comp
L Switch:SW_Push SW1
U 1 1 5C5915A8
P 9450 4850
F 0 "SW1" H 9450 5135 50  0000 C CNN
F 1 "SW_Push" H 9450 5044 50  0000 C CNN
F 2 "huellas:Pulsador_5,2x5,2" H 9450 5050 50  0001 C CNN
F 3 "" H 9450 5050 50  0001 C CNN
	1    9450 4850
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR016
U 1 1 5C5917F8
P 9800 4950
F 0 "#PWR016" H 9800 4700 50  0001 C CNN
F 1 "Earth" H 9800 4800 50  0001 C CNN
F 2 "" H 9800 4950 50  0001 C CNN
F 3 "~" H 9800 4950 50  0001 C CNN
	1    9800 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C591856
P 9100 4550
F 0 "R4" H 9170 4596 50  0000 L CNN
F 1 "R10K" H 9170 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9030 4550 50  0001 C CNN
F 3 "~" H 9100 4550 50  0001 C CNN
	1    9100 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5C592D5C
P 9100 4250
F 0 "#PWR011" H 9100 4100 50  0001 C CNN
F 1 "+5V" H 9115 4423 50  0000 C CNN
F 2 "" H 9100 4250 50  0001 C CNN
F 3 "" H 9100 4250 50  0001 C CNN
	1    9100 4250
	1    0    0    -1  
$EndComp
Text GLabel 8900 4850 0    50   Input ~ 0
RESET
Wire Wire Line
	8900 4850 9100 4850
Wire Wire Line
	9100 4700 9100 4850
Connection ~ 9100 4850
Wire Wire Line
	9100 4850 9250 4850
Wire Wire Line
	9100 4400 9100 4250
Wire Wire Line
	9650 4850 9800 4850
Wire Wire Line
	9800 4850 9800 4950
$Comp
L Device:LED D1
U 1 1 5C5C377B
P 4650 2250
F 0 "D1" H 4641 2466 50  0000 C CNN
F 1 "LED" H 4641 2375 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 2250 50  0001 C CNN
F 3 "~" H 4650 2250 50  0001 C CNN
	1    4650 2250
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR01
U 1 1 5C5C386E
P 4000 2250
F 0 "#PWR01" H 4000 2000 50  0001 C CNN
F 1 "Earth" H 4000 2100 50  0001 C CNN
F 2 "" H 4000 2250 50  0001 C CNN
F 3 "~" H 4000 2250 50  0001 C CNN
	1    4000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2250 5350 2250
$Comp
L Device:R R1
U 1 1 5C5CDA33
P 4950 2250
F 0 "R1" V 5157 2250 50  0000 C CNN
F 1 "R330" V 5066 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 2250 50  0001 C CNN
F 3 "~" H 4950 2250 50  0001 C CNN
	1    4950 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 3750 6200 3750
Wire Wire Line
	5950 3850 6200 3850
Text GLabel 9400 3800 0    50   Input ~ 0
RESET
Wire Wire Line
	6200 4250 5950 4250
Text GLabel 6200 3450 2    50   Input ~ 0
RX0
Wire Wire Line
	6200 3450 5950 3450
Text GLabel 6200 3650 2    50   Input ~ 0
TX0
Wire Wire Line
	6200 3650 5950 3650
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5C59B073
P 9700 1250
F 0 "J4" H 9780 1242 50  0000 L CNN
F 1 "UART0" H 9780 1151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9700 1250 50  0001 C CNN
F 3 "~" H 9700 1250 50  0001 C CNN
	1    9700 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5C59B2F5
P 9350 1100
F 0 "#PWR012" H 9350 950 50  0001 C CNN
F 1 "+5V" H 9365 1273 50  0000 C CNN
F 2 "" H 9350 1100 50  0001 C CNN
F 3 "" H 9350 1100 50  0001 C CNN
	1    9350 1100
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR013
U 1 1 5C59B328
P 9350 1500
F 0 "#PWR013" H 9350 1250 50  0001 C CNN
F 1 "Earth" H 9350 1350 50  0001 C CNN
F 2 "" H 9350 1500 50  0001 C CNN
F 3 "~" H 9350 1500 50  0001 C CNN
	1    9350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1100 9350 1150
Wire Wire Line
	9350 1150 9500 1150
Wire Wire Line
	9350 1500 9350 1450
Wire Wire Line
	9350 1450 9500 1450
Text GLabel 9300 1250 0    50   Input ~ 0
TX0
Text GLabel 9300 1350 0    50   Input ~ 0
RX0
Wire Wire Line
	9300 1250 9500 1250
Wire Wire Line
	9300 1350 9500 1350
Text GLabel 9400 3600 0    50   Input ~ 0
MISO-TX1
Wire Wire Line
	6200 2750 5950 2750
Wire Wire Line
	6200 2850 5950 2850
Wire Wire Line
	6200 2950 5950 2950
Wire Wire Line
	6200 3050 5950 3050
Wire Wire Line
	6200 3150 5950 3150
Wire Wire Line
	5950 3250 6200 3250
Text GLabel 6200 3950 2    50   Input ~ 0
PB3
Wire Wire Line
	6200 3950 5950 3950
Connection ~ 5350 2250
Wire Wire Line
	5350 2250 5350 2000
Wire Wire Line
	5350 2450 5350 2250
Wire Wire Line
	4000 2250 4500 2250
$Comp
L Device:R R2
U 1 1 5C5F2B2A
P 6900 4100
F 0 "R2" V 7107 4100 50  0000 C CNN
F 1 "R330" V 7016 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6830 4100 50  0001 C CNN
F 3 "~" H 6900 4100 50  0001 C CNN
	1    6900 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C5F2CF7
P 7200 4100
F 0 "D2" H 7191 4316 50  0000 C CNN
F 1 "LED" H 7191 4225 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7200 4100 50  0001 C CNN
F 3 "~" H 7200 4100 50  0001 C CNN
	1    7200 4100
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR05
U 1 1 5C5F6907
P 7400 4200
F 0 "#PWR05" H 7400 3950 50  0001 C CNN
F 1 "Earth" H 7400 4050 50  0001 C CNN
F 2 "" H 7400 4200 50  0001 C CNN
F 3 "~" H 7400 4200 50  0001 C CNN
	1    7400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4100 7400 4100
Wire Wire Line
	7400 4100 7400 4200
$Comp
L power:VPP #PWR021
U 1 1 5C5A1FBC
P 6650 1150
F 0 "#PWR021" H 6650 1000 50  0001 C CNN
F 1 "VPP" H 6665 1323 50  0000 C CNN
F 2 "" H 6650 1150 50  0001 C CNN
F 3 "" H 6650 1150 50  0001 C CNN
	1    6650 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 5C5A22E9
P 7900 1850
F 0 "J12" H 7980 1842 50  0000 L CNN
F 1 "XT30" H 7980 1751 50  0000 L CNN
F 2 "proyectoAjeno:XT30PW-F" H 7900 1850 50  0001 C CNN
F 3 "~" H 7900 1850 50  0001 C CNN
	1    7900 1850
	1    0    0    -1  
$EndComp
$Comp
L power:VPP #PWR017
U 1 1 5C5A2565
P 7700 1950
F 0 "#PWR017" H 7700 1800 50  0001 C CNN
F 1 "VPP" H 7715 2123 50  0000 C CNN
F 2 "" H 7700 1950 50  0001 C CNN
F 3 "" H 7700 1950 50  0001 C CNN
	1    7700 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 1800 7700 1850
$Comp
L power:Earth #PWR018
U 1 1 5C5A65D0
P 7700 1800
F 0 "#PWR018" H 7700 1550 50  0001 C CNN
F 1 "Earth" H 7700 1650 50  0001 C CNN
F 2 "" H 7700 1800 50  0001 C CNN
F 3 "~" H 7700 1800 50  0001 C CNN
	1    7700 1800
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5C6BB3AE
P 7050 1250
F 0 "U2" H 7050 1492 50  0000 C CNN
F 1 "L7805" H 7050 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 7075 1100 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 7050 1200 50  0001 C CNN
	1    7050 1250
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR09
U 1 1 5C6CD35E
P 7050 1550
F 0 "#PWR09" H 7050 1300 50  0001 C CNN
F 1 "Earth" H 7050 1400 50  0001 C CNN
F 2 "" H 7050 1550 50  0001 C CNN
F 3 "~" H 7050 1550 50  0001 C CNN
	1    7050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1150 6650 1250
Wire Wire Line
	6650 1250 6750 1250
$Comp
L Diode:1N4007 D5
U 1 1 5C6D87B0
P 7500 1250
F 0 "D5" H 7500 1034 50  0000 C CNN
F 1 "US2D" H 7500 1125 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 7500 1075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7500 1250 50  0001 C CNN
	1    7500 1250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5C758306
P 7750 1200
F 0 "#PWR06" H 7750 1050 50  0001 C CNN
F 1 "+5V" H 7765 1373 50  0000 C CNN
F 2 "" H 7750 1200 50  0001 C CNN
F 3 "" H 7750 1200 50  0001 C CNN
	1    7750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1250 7750 1250
Wire Wire Line
	7750 1250 7750 1200
$Comp
L power:+5V #PWR07
U 1 1 5C75D41E
P 9900 3600
F 0 "#PWR07" H 9900 3450 50  0001 C CNN
F 1 "+5V" H 9915 3773 50  0000 C CNN
F 2 "" H 9900 3600 50  0001 C CNN
F 3 "" H 9900 3600 50  0001 C CNN
	1    9900 3600
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR010
U 1 1 5C75D451
P 9900 3800
F 0 "#PWR010" H 9900 3550 50  0001 C CNN
F 1 "Earth" H 9900 3650 50  0001 C CNN
F 2 "" H 9900 3800 50  0001 C CNN
F 3 "~" H 9900 3800 50  0001 C CNN
	1    9900 3800
	1    0    0    -1  
$EndComp
Text GLabel 7150 2500 0    50   Input ~ 0
TEMP1
Text GLabel 7150 3150 0    50   Input ~ 0
TEMP2
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5C766610
P 10550 2200
F 0 "J3" H 10630 2192 50  0000 L CNN
F 1 "I2C" H 10630 2101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10550 2200 50  0001 C CNN
F 3 "~" H 10550 2200 50  0001 C CNN
	1    10550 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 5C766617
P 10200 2050
F 0 "#PWR019" H 10200 1900 50  0001 C CNN
F 1 "+5V" H 10215 2223 50  0000 C CNN
F 2 "" H 10200 2050 50  0001 C CNN
F 3 "" H 10200 2050 50  0001 C CNN
	1    10200 2050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR020
U 1 1 5C76661D
P 10200 2450
F 0 "#PWR020" H 10200 2200 50  0001 C CNN
F 1 "Earth" H 10200 2300 50  0001 C CNN
F 2 "" H 10200 2450 50  0001 C CNN
F 3 "~" H 10200 2450 50  0001 C CNN
	1    10200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2050 10200 2100
Wire Wire Line
	10200 2100 10350 2100
Wire Wire Line
	10200 2450 10200 2400
Wire Wire Line
	10200 2400 10350 2400
Text GLabel 9750 2200 0    50   Input ~ 0
MOSI-SDA-RX1
Text GLabel 9750 2300 0    50   Input ~ 0
SCK-SCL
Text GLabel 9400 3700 0    50   Input ~ 0
SCK-SCL
Text GLabel 9900 3700 2    50   Input ~ 0
MOSI-SDA-RX1
Text GLabel 6200 4250 2    50   Input ~ 0
SCK-SCL
Text GLabel 6200 3850 2    50   Input ~ 0
MISO-TX1
Text GLabel 6200 3750 2    50   Input ~ 0
MOSI-SDA-RX1
Wire Wire Line
	9750 2300 9850 2300
Wire Wire Line
	9750 2200 9850 2200
$Comp
L Device:R R6
U 1 1 5C76F32B
P 9850 2050
F 0 "R6" H 9920 2096 50  0000 L CNN
F 1 "R10K" H 9920 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9780 2050 50  0001 C CNN
F 3 "~" H 9850 2050 50  0001 C CNN
	1    9850 2050
	1    0    0    -1  
$EndComp
Connection ~ 9850 2200
Wire Wire Line
	9850 2200 10350 2200
$Comp
L Device:R R5
U 1 1 5C76F479
P 9850 2450
F 0 "R5" H 9920 2496 50  0000 L CNN
F 1 "R10K" H 9920 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9780 2450 50  0001 C CNN
F 3 "~" H 9850 2450 50  0001 C CNN
	1    9850 2450
	1    0    0    -1  
$EndComp
Connection ~ 9850 2300
Wire Wire Line
	9850 2300 10350 2300
$Comp
L power:+5V #PWR014
U 1 1 5C76F5A1
P 9850 1900
F 0 "#PWR014" H 9850 1750 50  0001 C CNN
F 1 "+5V" H 9865 2073 50  0000 C CNN
F 2 "" H 9850 1900 50  0001 C CNN
F 3 "" H 9850 1900 50  0001 C CNN
	1    9850 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5C76F5D6
P 9850 2600
F 0 "#PWR015" H 9850 2450 50  0001 C CNN
F 1 "+5V" H 9865 2773 50  0000 C CNN
F 2 "" H 9850 2600 50  0001 C CNN
F 3 "" H 9850 2600 50  0001 C CNN
	1    9850 2600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 5C773CA2
P 9600 3700
F 0 "J2" H 9650 4017 50  0000 C CNN
F 1 "ICSP" H 9650 3926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 9600 3700 50  0001 C CNN
F 3 "~" H 9600 3700 50  0001 C CNN
	1    9600 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J5
U 1 1 5C7997F1
P 8700 2750
F 0 "J5" H 8780 2792 50  0000 L CNN
F 1 "Puerto Motores" H 8780 2701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 8700 2750 50  0001 C CNN
F 3 "~" H 8700 2750 50  0001 C CNN
	1    8700 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5C799A63
P 8500 2450
F 0 "#PWR0101" H 8500 2300 50  0001 C CNN
F 1 "+5V" H 8515 2623 50  0000 C CNN
F 2 "" H 8500 2450 50  0001 C CNN
F 3 "" H 8500 2450 50  0001 C CNN
	1    8500 2450
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0102
U 1 1 5C799A9A
P 8400 2550
F 0 "#PWR0102" H 8400 2300 50  0001 C CNN
F 1 "Earth" H 8400 2400 50  0001 C CNN
F 2 "" H 8400 2550 50  0001 C CNN
F 3 "~" H 8400 2550 50  0001 C CNN
	1    8400 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 2550 8400 2550
Text GLabel 8500 3050 0    50   Input ~ 0
PWM
Text GLabel 6200 3250 2    50   Input ~ 0
PWM
Text GLabel 6200 2750 2    50   Input ~ 0
TEMP1
Text GLabel 6200 2850 2    50   Input ~ 0
TEMP2
Wire Wire Line
	5950 3350 6200 3350
Text GLabel 6200 4350 2    50   Input ~ 0
PC2
Wire Wire Line
	6200 4350 6050 4350
Wire Wire Line
	6050 4350 6050 4300
Wire Wire Line
	6050 4300 6750 4300
Connection ~ 6050 4350
Wire Wire Line
	6050 4350 5950 4350
Wire Wire Line
	6750 4300 6750 4100
Text GLabel 8500 2950 0    50   Input ~ 0
INB
Text GLabel 8500 2850 0    50   Input ~ 0
INA
Text GLabel 8500 2750 0    50   Input ~ 0
CS
Text GLabel 8500 2650 0    50   Input ~ 0
EN
Text GLabel 6200 2950 2    50   Input ~ 0
EN
Text GLabel 6200 3050 2    50   Input ~ 0
CS
Text GLabel 6200 3150 2    50   Input ~ 0
INA
Text GLabel 6200 3350 2    50   Input ~ 0
INB
Text GLabel 6200 4150 2    50   Input ~ 0
PC0
Wire Wire Line
	6200 4150 5950 4150
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5C79A32B
P 7350 2500
F 0 "J1" H 7430 2542 50  0000 L CNN
F 1 "Puerto_Temperatura_1" H 7430 2451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7350 2500 50  0001 C CNN
F 3 "~" H 7350 2500 50  0001 C CNN
	1    7350 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5C79A731
P 7350 3150
F 0 "J6" H 7430 3192 50  0000 L CNN
F 1 "Puerto_Temperatura_1" H 7430 3101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7350 3150 50  0001 C CNN
F 3 "~" H 7350 3150 50  0001 C CNN
	1    7350 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5C79A875
P 7150 2400
F 0 "#PWR022" H 7150 2250 50  0001 C CNN
F 1 "+5V" H 7165 2573 50  0000 C CNN
F 2 "" H 7150 2400 50  0001 C CNN
F 3 "" H 7150 2400 50  0001 C CNN
	1    7150 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 5C79A8B0
P 7150 3050
F 0 "#PWR024" H 7150 2900 50  0001 C CNN
F 1 "+5V" H 7165 3223 50  0000 C CNN
F 2 "" H 7150 3050 50  0001 C CNN
F 3 "" H 7150 3050 50  0001 C CNN
	1    7150 3050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR025
U 1 1 5C7A1998
P 7150 3250
F 0 "#PWR025" H 7150 3000 50  0001 C CNN
F 1 "Earth" H 7150 3100 50  0001 C CNN
F 2 "" H 7150 3250 50  0001 C CNN
F 3 "~" H 7150 3250 50  0001 C CNN
	1    7150 3250
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR023
U 1 1 5C7A19D1
P 7150 2600
F 0 "#PWR023" H 7150 2350 50  0001 C CNN
F 1 "Earth" H 7150 2450 50  0001 C CNN
F 2 "" H 7150 2600 50  0001 C CNN
F 3 "~" H 7150 2600 50  0001 C CNN
	1    7150 2600
	1    0    0    -1  
$EndComp
$EndSCHEMATC