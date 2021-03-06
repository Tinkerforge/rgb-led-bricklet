EESchema Schematic File Version 2
LIBS:tinkerforge
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:rgb-led-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "RGB LED Bricklet"
Date "2016-08-04"
Rev "1.1"
Comp "Tinkerforge GmbH"
Comment1 "Licensed under CERN OHL v.1.1"
Comment2 "Copyright (©) 2016, B.Nordmeyer <bastian@tinkerforge.com>"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 550  7700 0    40   ~ 0
Copyright Tinkerforge GmbH 2016.\nThis documentation describes Open Hardware and is licensed under the\nCERN OHL v. 1.1.\nYou may redistribute and modify this documentation under the terms of the\nCERN OHL v.1.1. (http://ohwr.org/cernohl). This documentation is distributed\nWITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF\nMERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A\nPARTICULAR PURPOSE. Please see the CERN OHL v.1.1 for applicable\nconditions\n
$Comp
L GND #PWR01
U 1 1 4CE29748
P 6700 3200
F 0 "#PWR01" H 6700 3200 30  0001 C CNN
F 1 "GND" H 6700 3130 30  0001 C CNN
F 2 "" H 6700 3200 60  0001 C CNN
F 3 "" H 6700 3200 60  0001 C CNN
	1    6700 3200
	1    0    0    -1  
$EndComp
NoConn ~ 6250 3250
$Comp
L DRILL U2
U 1 1 4C6050A5
P 10650 6150
F 0 "U2" H 10700 6200 60  0001 C CNN
F 1 "DRILL" H 10650 6150 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10650 6150 60  0001 C CNN
F 3 "" H 10650 6150 60  0001 C CNN
	1    10650 6150
	1    0    0    -1  
$EndComp
$Comp
L DRILL U3
U 1 1 4C6050A2
P 10650 6350
F 0 "U3" H 10700 6400 60  0001 C CNN
F 1 "DRILL" H 10650 6350 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10650 6350 60  0001 C CNN
F 3 "" H 10650 6350 60  0001 C CNN
	1    10650 6350
	1    0    0    -1  
$EndComp
$Comp
L DRILL U5
U 1 1 4C60509F
P 11000 6350
F 0 "U5" H 11050 6400 60  0001 C CNN
F 1 "DRILL" H 11000 6350 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 11000 6350 60  0001 C CNN
F 3 "" H 11000 6350 60  0001 C CNN
	1    11000 6350
	1    0    0    -1  
$EndComp
$Comp
L DRILL U4
U 1 1 4C605099
P 11000 6150
F 0 "U4" H 11050 6200 60  0001 C CNN
F 1 "DRILL" H 11000 6150 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 11000 6150 60  0001 C CNN
F 3 "" H 11000 6150 60  0001 C CNN
	1    11000 6150
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4C5FD6ED
P 6500 3050
F 0 "C4" V 6650 3050 50  0000 L CNN
F 1 "100nF" V 6350 3050 50  0000 L CNN
F 2 "kicad-libraries:C0603E" H 6500 3050 60  0001 C CNN
F 3 "" H 6500 3050 60  0001 C CNN
	1    6500 3050
	0    -1   -1   0   
$EndComp
Text GLabel 6700 3450 2    60   Input ~ 0
SDA
Text GLabel 6700 3350 2    60   Input ~ 0
SCL
Text GLabel 4750 3250 2    60   Output ~ 0
SDA
Text GLabel 4750 3150 2    60   Output ~ 0
SCL
$Comp
L GND #PWR02
U 1 1 4C5FD34E
P 5350 3550
F 0 "#PWR02" H 5350 3550 30  0001 C CNN
F 1 "GND" H 5350 3480 30  0001 C CNN
F 2 "" H 5350 3550 60  0001 C CNN
F 3 "" H 5350 3550 60  0001 C CNN
	1    5350 3550
	1    0    0    -1  
$EndComp
$Comp
L CAT24C U1
U 1 1 4C5FD337
P 5850 3550
F 0 "U1" H 5700 4050 60  0000 C CNN
F 1 "M24C64" H 5850 3550 60  0000 C CNN
F 2 "kicad-libraries:SOIC8" H 5850 3550 60  0001 C CNN
F 3 "" H 5850 3550 60  0001 C CNN
	1    5850 3550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 4C5FCFB4
P 5600 2300
F 0 "#PWR03" H 5600 2400 30  0001 C CNN
F 1 "VCC" H 5600 2400 30  0000 C CNN
F 2 "" H 5600 2300 60  0001 C CNN
F 3 "" H 5600 2300 60  0001 C CNN
	1    5600 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 4C5FCF5E
P 5250 3050
F 0 "#PWR04" H 5250 3050 30  0001 C CNN
F 1 "GND" H 5250 2980 30  0001 C CNN
F 2 "" H 5250 3050 60  0001 C CNN
F 3 "" H 5250 3050 60  0001 C CNN
	1    5250 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4C5FCF4F
P 3950 4000
F 0 "#PWR05" H 3950 4000 30  0001 C CNN
F 1 "GND" H 3950 3930 30  0001 C CNN
F 2 "" H 3950 4000 60  0001 C CNN
F 3 "" H 3950 4000 60  0001 C CNN
	1    3950 4000
	1    0    0    -1  
$EndComp
$Comp
L CON-SENSOR P1
U 1 1 4C5FCF27
P 3950 3300
F 0 "P1" H 3700 3850 60  0000 C CNN
F 1 "CON-SENSOR" V 4100 3300 60  0000 C CNN
F 2 "kicad-libraries:CON-SENSOR" H 3950 3300 60  0001 C CNN
F 3 "" H 3950 3300 60  0001 C CNN
	1    3950 3300
	-1   0    0    -1  
$EndComp
$Comp
L FILTER FB1
U 1 1 54F7633D
P 5000 2300
F 0 "FB1" H 5000 2450 60  0000 C CNN
F 1 "FILTER" H 5000 2200 60  0000 C CNN
F 2 "kicad-libraries:C0603E" H 5000 2300 60  0001 C CNN
F 3 "" H 5000 2300 60  0000 C CNN
	1    5000 2300
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 54F764A0
P 5000 2950
F 0 "R2" V 5080 2950 50  0000 C CNN
F 1 "0" V 5000 2950 50  0000 C CNN
F 2 "kicad-libraries:R0603E" H 5000 2950 60  0001 C CNN
F 3 "" H 5000 2950 60  0001 C CNN
	1    5000 2950
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 54F76B96
P 4650 2550
F 0 "C1" V 4750 2700 50  0000 L CNN
F 1 "100nF" V 4500 2550 50  0000 L CNN
F 2 "kicad-libraries:C0603E" H 4650 2550 60  0001 C CNN
F 3 "" H 4650 2550 60  0001 C CNN
	1    4650 2550
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 54F77AA5
P 5400 2550
F 0 "C2" V 5500 2700 50  0000 L CNN
F 1 "100nF" V 5250 2550 50  0000 L CNN
F 2 "kicad-libraries:C0603E" H 5400 2550 60  0001 C CNN
F 3 "" H 5400 2550 60  0001 C CNN
	1    5400 2550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 54F77AEA
P 5400 2800
F 0 "#PWR06" H 5400 2800 30  0001 C CNN
F 1 "GND" H 5400 2730 30  0001 C CNN
F 2 "" H 5400 2800 60  0001 C CNN
F 3 "" H 5400 2800 60  0001 C CNN
	1    5400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3150 6250 3050
Wire Wire Line
	6250 3350 6700 3350
Wire Wire Line
	4400 3250 4750 3250
Connection ~ 5350 3450
Wire Wire Line
	5350 3250 5450 3250
Wire Wire Line
	4400 3350 5450 3350
Wire Wire Line
	3950 4000 3950 3900
Wire Wire Line
	5450 3450 5350 3450
Wire Wire Line
	5350 3550 5350 3150
Wire Wire Line
	5350 3150 5450 3150
Connection ~ 5350 3250
Wire Wire Line
	4400 3150 4750 3150
Wire Wire Line
	6250 3450 6700 3450
Wire Wire Line
	6700 3200 6700 3050
Wire Wire Line
	6250 3050 6300 3050
Connection ~ 6250 3050
Wire Wire Line
	4400 2950 4750 2950
Wire Wire Line
	4500 2300 4650 2300
Wire Wire Line
	5250 2950 5250 3050
Wire Wire Line
	5350 2300 5600 2300
Wire Wire Line
	5400 2800 5400 2750
Wire Wire Line
	4650 2300 4650 2350
Wire Wire Line
	5400 2350 5400 2300
Connection ~ 5400 2300
Connection ~ 4650 2300
Wire Wire Line
	4650 2950 4650 2750
Connection ~ 4650 2950
$Comp
L 3V3 #PWR07
U 1 1 564C2ECD
P 6250 3050
F 0 "#PWR07" H 6250 3150 40  0001 C CNN
F 1 "3V3" H 6250 3175 40  0000 C CNN
F 2 "" H 6250 3050 60  0000 C CNN
F 3 "" H 6250 3050 60  0000 C CNN
	1    6250 3050
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR08
U 1 1 564C2EED
P 4450 3050
F 0 "#PWR08" H 4450 3150 40  0001 C CNN
F 1 "3V3" H 4450 3175 40  0000 C CNN
F 2 "" H 4450 3050 60  0000 C CNN
F 3 "" H 4450 3050 60  0000 C CNN
	1    4450 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 3050 4450 3050
Wire Wire Line
	4400 2850 4500 2850
Wire Wire Line
	4500 2850 4500 2300
$Comp
L VCC #PWR09
U 1 1 564C39A6
P 5500 3900
F 0 "#PWR09" H 5500 4000 30  0001 C CNN
F 1 "VCC" H 5500 4000 30  0000 C CNN
F 2 "" H 5500 3900 60  0001 C CNN
F 3 "" H 5500 3900 60  0001 C CNN
	1    5500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3900 5500 4300
$Comp
L C C3
U 1 1 564C3C1F
P 5850 3950
F 0 "C3" V 6000 3950 50  0000 L CNN
F 1 "100nF" V 5700 3950 50  0000 L CNN
F 2 "kicad-libraries:C0603E" H 5850 3950 60  0001 C CNN
F 3 "" H 5850 3950 60  0001 C CNN
	1    5850 3950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR010
U 1 1 564C3CE5
P 5500 4650
F 0 "#PWR010" H 5500 4650 30  0001 C CNN
F 1 "GND" H 5500 4580 30  0001 C CNN
F 2 "" H 5500 4650 60  0001 C CNN
F 3 "" H 5500 4650 60  0001 C CNN
	1    5500 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 564C3D02
P 6050 4050
F 0 "#PWR011" H 6050 4050 30  0001 C CNN
F 1 "GND" H 6050 3980 30  0001 C CNN
F 2 "" H 6050 4050 60  0001 C CNN
F 3 "" H 6050 4050 60  0001 C CNN
	1    6050 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4050 6050 3950
Wire Wire Line
	5650 3950 5500 3950
Connection ~ 5500 3950
Wire Wire Line
	5500 4650 5500 4500
$Comp
L R R3
U 1 1 564C3F84
P 5200 4400
F 0 "R3" V 5280 4400 50  0000 C CNN
F 1 "330" V 5200 4400 50  0000 C CNN
F 2 "kicad-libraries:R0603E" H 5200 4400 60  0001 C CNN
F 3 "" H 5200 4400 60  0001 C CNN
	1    5200 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4400 5450 4400
NoConn ~ 6200 4400
NoConn ~ 4400 3550
NoConn ~ 4400 3650
NoConn ~ 4400 3750
$Comp
L WS2812B_LED LED1
U 1 1 564C706E
P 5850 4400
F 0 "LED1" H 5750 4600 60  0000 C CNN
F 1 "WS2812B_LED" H 5850 4200 60  0000 C CNN
F 2 "kicad-libraries:WS2812B_LED" H 5850 4400 60  0001 C CNN
F 3 "" H 5850 4400 60  0000 C CNN
	1    5850 4400
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_N_CH Q1
U 1 1 564C6939
P 4850 4650
F 0 "Q1" H 4860 4820 60  0000 R CNN
F 1 "2N7002P" H 4850 4450 60  0000 R CNN
F 2 "kicad-libraries:SOT23GDS" H 4850 4650 60  0001 C CNN
F 3 "" H 4850 4650 60  0000 C CNN
	1    4850 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3450 4650 3450
Wire Wire Line
	4650 3450 4650 4650
$Comp
L GND #PWR012
U 1 1 564C6A8F
P 4950 4900
F 0 "#PWR012" H 4950 4900 30  0001 C CNN
F 1 "GND" H 4950 4830 30  0001 C CNN
F 2 "" H 4950 4900 60  0001 C CNN
F 3 "" H 4950 4900 60  0001 C CNN
	1    4950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4900 4950 4850
Wire Wire Line
	4950 4350 4950 4450
$Comp
L R R1
U 1 1 564C6D07
P 4950 4100
F 0 "R1" V 5030 4100 50  0000 C CNN
F 1 "1k" V 4950 4100 50  0000 C CNN
F 2 "kicad-libraries:R0603E" H 4950 4100 60  0001 C CNN
F 3 "" H 4950 4100 60  0001 C CNN
	1    4950 4100
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR013
U 1 1 564C6D99
P 4950 3800
F 0 "#PWR013" H 4950 3900 30  0001 C CNN
F 1 "VCC" H 4950 3900 30  0000 C CNN
F 2 "" H 4950 3800 60  0001 C CNN
F 3 "" H 4950 3800 60  0001 C CNN
	1    4950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3850 4950 3800
Connection ~ 4950 4400
$EndSCHEMATC
