EESchema Schematic File Version 2
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
LIBS:special
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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "3 nov 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74LS163 U?
U 1 1 56393C9A
P 6000 1850
F 0 "U?" H 6050 1950 60  0000 C CNN
F 1 "74LS163" H 6100 1650 60  0000 C CNN
F 2 "~" H 6000 1850 60  0000 C CNN
F 3 "~" H 6000 1850 60  0000 C CNN
	1    6000 1850
	0    1    1    0   
$EndComp
$Comp
L 74LS163 U?
U 1 1 56393DB4
P 7450 1850
F 0 "U?" H 7500 1950 60  0000 C CNN
F 1 "74LS163" H 7550 1650 60  0000 C CNN
F 2 "~" H 7450 1850 60  0000 C CNN
F 3 "~" H 7450 1850 60  0000 C CNN
	1    7450 1850
	0    1    1    0   
$EndComp
$Comp
L 74LS163 U?
U 1 1 56393DBF
P 8900 1850
F 0 "U?" H 8950 1950 60  0000 C CNN
F 1 "74LS163" H 9000 1650 60  0000 C CNN
F 2 "~" H 8900 1850 60  0000 C CNN
F 3 "~" H 8900 1850 60  0000 C CNN
	1    8900 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 2550 8900 2600
Wire Wire Line
	8900 2600 8200 2600
Wire Wire Line
	8200 2600 8200 1100
Wire Wire Line
	8200 1100 7250 1100
Wire Wire Line
	7250 1100 7250 1150
Wire Wire Line
	7450 2550 7450 2600
Wire Wire Line
	7450 2600 6750 2600
Wire Wire Line
	6750 2600 6750 1100
Wire Wire Line
	6750 1100 5800 1100
Wire Wire Line
	5800 1100 5800 1150
$Comp
L VCC #PWR?
U 1 1 56393FE2
P 7350 1050
F 0 "#PWR?" H 7350 1150 30  0001 C CNN
F 1 "VCC" H 7350 1150 30  0000 C CNN
F 2 "" H 7350 1050 60  0000 C CNN
F 3 "" H 7350 1050 60  0000 C CNN
	1    7350 1050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 56393FF2
P 5900 1050
F 0 "#PWR?" H 5900 1150 30  0001 C CNN
F 1 "VCC" H 5900 1150 30  0000 C CNN
F 2 "" H 5900 1050 60  0000 C CNN
F 3 "" H 5900 1050 60  0000 C CNN
	1    5900 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1050 7350 1150
Wire Wire Line
	5900 1050 5900 1150
Text Label 8600 900  0    60   ~ 0
CLK
Wire Wire Line
	8600 900  8600 1150
$EndSCHEMATC
