EESchema Schematic File Version 4
LIBS:ATtiny_prototipado-cache
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
U 1 1 5C6AE83B
P 3600 2750
F 0 "U1" H 3070 2796 50  0000 R CNN
F 1 "ATtiny1634-SU" H 3070 2705 50  0000 R CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 3600 2750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8303-8-bit-AVR-Microcontroller-tinyAVR-ATtiny1634_Datasheet.pdf" H 3600 2750 50  0001 C CNN
	1    3600 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 5C6AE98F
P 4950 1950
F 0 "J1" H 5029 1942 50  0000 L CNN
F 1 "Conector_izquierdo" H 5029 1851 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 4950 1950 50  0001 C CNN
F 3 "~" H 4950 1950 50  0001 C CNN
	1    4950 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J2
U 1 1 5C6AEAFC
P 4950 3250
F 0 "J2" H 5029 3242 50  0000 L CNN
F 1 "Conector_derecho" H 5029 3151 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 4950 3250 50  0001 C CNN
F 3 "~" H 4950 3250 50  0001 C CNN
	1    4950 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5C6AEBB5
P 3600 1250
F 0 "#PWR01" H 3600 1100 50  0001 C CNN
F 1 "VCC" H 3617 1423 50  0000 C CNN
F 2 "" H 3600 1250 50  0001 C CNN
F 3 "" H 3600 1250 50  0001 C CNN
	1    3600 1250
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR02
U 1 1 5C6AECE2
P 3600 4050
F 0 "#PWR02" H 3600 3800 50  0001 C CNN
F 1 "Earth" H 3600 3900 50  0001 C CNN
F 2 "" H 3600 4050 50  0001 C CNN
F 3 "~" H 3600 4050 50  0001 C CNN
	1    3600 4050
	1    0    0    -1  
$EndComp
Text GLabel 4200 1750 2    50   Input ~ 0
PA0
Text GLabel 4200 1850 2    50   Input ~ 0
PA1
Text GLabel 4200 1950 2    50   Input ~ 0
PA2
Text GLabel 4200 2050 2    50   Input ~ 0
PA3
Text GLabel 4200 2150 2    50   Input ~ 0
PA4
Text GLabel 4200 2250 2    50   Input ~ 0
PA5
Text GLabel 4200 2650 2    50   Input ~ 0
PB0
Text GLabel 4200 2750 2    50   Input ~ 0
MOSI
Text GLabel 4200 2850 2    50   Input ~ 0
MISO
Text GLabel 4200 3150 2    50   Input ~ 0
PC0
Text GLabel 4200 3250 2    50   Input ~ 0
SCK
Text GLabel 4200 3350 2    50   Input ~ 0
PC2
Text GLabel 4200 3450 2    50   Input ~ 0
PC3
Text GLabel 4200 3550 2    50   Input ~ 0
PC4
Text GLabel 4200 3650 2    50   Input ~ 0
PC5
Text GLabel 4200 2350 2    50   Input ~ 0
PA6
Text GLabel 4200 2450 2    50   Input ~ 0
PA7
Text GLabel 4200 2950 2    50   Input ~ 0
PB3
Text GLabel 4750 1550 0    50   Input ~ 0
PB0
Text GLabel 4750 1650 0    50   Input ~ 0
PA7
Text GLabel 4750 1750 0    50   Input ~ 0
PA6
Text GLabel 4750 1850 0    50   Input ~ 0
PA5
Text GLabel 4750 1950 0    50   Input ~ 0
PA4
Text GLabel 4750 2050 0    50   Input ~ 0
PA3
Text GLabel 4750 2150 0    50   Input ~ 0
PA2
Text GLabel 4750 2250 0    50   Input ~ 0
PA1
Text GLabel 4750 2350 0    50   Input ~ 0
PA0
$Comp
L power:Earth #PWR03
U 1 1 5C6AEEEB
P 4750 2450
F 0 "#PWR03" H 4750 2200 50  0001 C CNN
F 1 "Earth" H 4750 2300 50  0001 C CNN
F 2 "" H 4750 2450 50  0001 C CNN
F 3 "~" H 4750 2450 50  0001 C CNN
	1    4750 2450
	1    0    0    -1  
$EndComp
Text GLabel 4750 2850 0    50   Input ~ 0
PB1
Text GLabel 4750 2950 0    50   Input ~ 0
PB2
Text GLabel 4750 3050 0    50   Input ~ 0
PB3
Text GLabel 4750 3150 0    50   Input ~ 0
PC0
Text GLabel 4750 3250 0    50   Input ~ 0
PC1
Text GLabel 4750 3350 0    50   Input ~ 0
PC2
Text GLabel 4750 3450 0    50   Input ~ 0
PC3
Text GLabel 4750 3550 0    50   Input ~ 0
PC4
Text GLabel 4750 3650 0    50   Input ~ 0
PC5
$Comp
L power:VCC #PWR04
U 1 1 5C6AEFA0
P 4750 3750
F 0 "#PWR04" H 4750 3600 50  0001 C CNN
F 1 "VCC" H 4768 3923 50  0000 C CNN
F 2 "" H 4750 3750 50  0001 C CNN
F 3 "" H 4750 3750 50  0001 C CNN
	1    4750 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5C6B3893
P 4150 1350
F 0 "D1" H 4142 1095 50  0000 C CNN
F 1 "LED" H 4142 1186 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4150 1350 50  0001 C CNN
F 3 "~" H 4150 1350 50  0001 C CNN
	1    4150 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5C6B3A8E
P 3850 1350
F 0 "R1" V 3643 1350 50  0000 C CNN
F 1 "R" V 3734 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 1350 50  0001 C CNN
F 3 "~" H 3850 1350 50  0001 C CNN
	1    3850 1350
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR05
U 1 1 5C6B3B44
P 4300 1350
F 0 "#PWR05" H 4300 1100 50  0001 C CNN
F 1 "Earth" H 4300 1200 50  0001 C CNN
F 2 "" H 4300 1350 50  0001 C CNN
F 3 "~" H 4300 1350 50  0001 C CNN
	1    4300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1250 3600 1350
Wire Wire Line
	3700 1350 3600 1350
Connection ~ 3600 1350
Wire Wire Line
	3600 1350 3600 1450
$EndSCHEMATC
