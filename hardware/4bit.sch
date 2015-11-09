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
Date "4 nov 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74LS163 PC2
U 1 1 56393C9A
P 7250 1850
F 0 "PC2" H 7300 1950 60  0000 C CNN
F 1 "74LS163" H 7350 1650 60  0000 C CNN
F 2 "~" H 7250 1850 60  0000 C CNN
F 3 "~" H 7250 1850 60  0000 C CNN
	1    7250 1850
	0    1    1    0   
$EndComp
$Comp
L 74LS163 PC1
U 1 1 56393DB4
P 8700 1850
F 0 "PC1" H 8750 1950 60  0000 C CNN
F 1 "74LS163" H 8800 1650 60  0000 C CNN
F 2 "~" H 8700 1850 60  0000 C CNN
F 3 "~" H 8700 1850 60  0000 C CNN
	1    8700 1850
	0    1    1    0   
$EndComp
$Comp
L 74LS163 PC0
U 1 1 56393DBF
P 10150 1850
F 0 "PC0" H 10200 1950 60  0000 C CNN
F 1 "74LS163" H 10250 1650 60  0000 C CNN
F 2 "~" H 10150 1850 60  0000 C CNN
F 3 "~" H 10150 1850 60  0000 C CNN
	1    10150 1850
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR01
U 1 1 56393FE2
P 8600 1050
F 0 "#PWR01" H 8600 1150 30  0001 C CNN
F 1 "VCC" H 8600 1150 30  0000 C CNN
F 2 "" H 8600 1050 60  0000 C CNN
F 3 "" H 8600 1050 60  0000 C CNN
	1    8600 1050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 56393FF2
P 7150 1050
F 0 "#PWR02" H 7150 1150 30  0001 C CNN
F 1 "VCC" H 7150 1150 30  0000 C CNN
F 2 "" H 7150 1050 60  0000 C CNN
F 3 "" H 7150 1050 60  0000 C CNN
	1    7150 1050
	1    0    0    -1  
$EndComp
Text GLabel 6450 900  0    60   Input ~ 0
CLK
Text GLabel 6450 600  0    60   Input ~ 0
/RESET
Text GLabel 6450 750  0    60   Input ~ 0
/LOADPC
Text GLabel 10750 800  2    60   Input ~ 0
INCPC
$Comp
L VCC #PWR03
U 1 1 5639438E
P 10050 1050
F 0 "#PWR03" H 10050 1150 30  0001 C CNN
F 1 "VCC" H 10050 1150 30  0000 C CNN
F 2 "" H 10050 1050 60  0000 C CNN
F 3 "" H 10050 1050 60  0000 C CNN
	1    10050 1050
	1    0    0    -1  
$EndComp
$Comp
L 27C64 PROGROM0
U 1 1 56394746
P 8650 4100
F 0 "PROGROM0" H 8400 5100 70  0000 C CNN
F 1 "27C64" H 8650 3100 70  0000 C CNN
F 2 "" H 8650 4100 60  0000 C CNN
F 3 "" H 8650 4100 60  0000 C CNN
	1    8650 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 2550 10150 2600
Wire Wire Line
	10150 2600 9450 2600
Wire Wire Line
	9450 2600 9450 1100
Wire Wire Line
	9450 1100 8500 1100
Wire Wire Line
	8500 1100 8500 1150
Wire Wire Line
	8700 2550 8700 2600
Wire Wire Line
	8700 2600 8000 2600
Wire Wire Line
	8000 2600 8000 1100
Wire Wire Line
	8000 1100 7050 1100
Wire Wire Line
	7050 1100 7050 1150
Wire Wire Line
	8600 1050 8600 1150
Wire Wire Line
	7150 1050 7150 1150
Wire Wire Line
	9850 900  9850 1150
Wire Wire Line
	8400 900  8400 1150
Wire Wire Line
	6950 1150 6950 900 
Wire Wire Line
	6450 600  9650 600 
Wire Wire Line
	6750 600  6750 1150
Wire Wire Line
	8200 600  8200 1150
Connection ~ 6750 600 
Wire Wire Line
	9650 600  9650 1150
Connection ~ 8200 600 
Wire Wire Line
	6450 750  10150 750 
Wire Wire Line
	7250 750  7250 1150
Wire Wire Line
	8700 750  8700 1150
Connection ~ 7250 750 
Wire Wire Line
	10150 750  10150 1150
Connection ~ 8700 750 
Wire Wire Line
	6450 900  9850 900 
Connection ~ 6950 900 
Connection ~ 8400 900 
Wire Wire Line
	10750 800  9950 800 
Wire Wire Line
	9950 800  9950 1150
Wire Wire Line
	10050 1050 10050 1150
Entry Wire Line
	9450 3150 9550 3250
Wire Wire Line
	9550 3250 9550 3400
Entry Wire Line
	10650 2650 10750 2750
Wire Wire Line
	10650 2650 10650 2550
Entry Wire Line
	9350 3150 9450 3250
Entry Wire Line
	9250 3150 9350 3250
Entry Wire Line
	9150 3150 9250 3250
Entry Wire Line
	9050 3150 9150 3250
Entry Wire Line
	8950 3150 9050 3250
Entry Wire Line
	8850 3150 8950 3250
Entry Wire Line
	8750 3150 8850 3250
Entry Wire Line
	8650 3150 8750 3250
Entry Wire Line
	8550 3150 8650 3250
Entry Wire Line
	8450 3150 8550 3250
Entry Wire Line
	8350 3150 8450 3250
Wire Wire Line
	9450 3400 9450 3250
Wire Wire Line
	9350 3400 9350 3250
Wire Wire Line
	9250 3400 9250 3250
Wire Wire Line
	9150 3400 9150 3250
Wire Wire Line
	9050 3400 9050 3250
Wire Wire Line
	8950 3400 8950 3250
Wire Wire Line
	8850 3400 8850 3250
Wire Wire Line
	8750 3400 8750 3250
Wire Wire Line
	8650 3400 8650 3250
Wire Wire Line
	8550 3400 8550 3250
Wire Wire Line
	8450 3400 8450 3250
Entry Wire Line
	10550 2650 10650 2750
Entry Wire Line
	10450 2650 10550 2750
Entry Wire Line
	10350 2650 10450 2750
Entry Wire Line
	9200 2650 9300 2750
Entry Wire Line
	9100 2650 9200 2750
Entry Wire Line
	9000 2650 9100 2750
Entry Wire Line
	8900 2650 9000 2750
Entry Wire Line
	7750 2650 7850 2750
Entry Wire Line
	7650 2650 7750 2750
Entry Wire Line
	7550 2650 7650 2750
Entry Wire Line
	7450 2650 7550 2750
Wire Wire Line
	10550 2550 10550 2650
Wire Wire Line
	10450 2550 10450 2650
Wire Wire Line
	10350 2550 10350 2650
Wire Wire Line
	9200 2550 9200 2650
Wire Wire Line
	9100 2550 9100 2650
Wire Wire Line
	9000 2550 9000 2650
Wire Wire Line
	8900 2550 8900 2650
Wire Wire Line
	7750 2550 7750 2650
Wire Wire Line
	7650 2550 7650 2650
Wire Wire Line
	7550 2550 7550 2650
Wire Wire Line
	7450 2550 7450 2650
Wire Bus Line
	8250 3150 10850 3150
Wire Bus Line
	10850 3150 10850 2750
Wire Bus Line
	10850 2750 7550 2750
Text Label 10650 2550 3    60   ~ 0
A0
Text Label 10550 2550 3    60   ~ 0
A1
Text Label 10450 2550 3    60   ~ 0
A2
Text Label 10350 2550 3    60   ~ 0
A3
Text Label 9200 2550 3    60   ~ 0
A4
Text Label 9100 2550 3    60   ~ 0
A5
Text Label 9000 2550 3    60   ~ 0
A6
Text Label 8900 2550 3    60   ~ 0
A7
Text Label 7750 2550 3    60   ~ 0
A8
Text Label 7650 2550 3    60   ~ 0
A9
Text Label 7550 2550 3    60   ~ 0
A10
Text Label 7450 2550 3    60   ~ 0
A11
Text Label 9550 3400 1    60   ~ 0
A0
Text Label 9450 3400 1    60   ~ 0
A1
Text Label 9350 3400 1    60   ~ 0
A2
Text Label 9250 3400 1    60   ~ 0
A3
Text Label 9150 3400 1    60   ~ 0
A4
Text Label 9050 3400 1    60   ~ 0
A5
Text Label 8950 3400 1    60   ~ 0
A6
Text Label 8850 3400 1    60   ~ 0
A7
Text Label 8750 3400 1    60   ~ 0
A8
Text Label 8650 3400 1    60   ~ 0
A9
Text Label 8550 3400 1    60   ~ 0
A10
Text Label 8450 3400 1    60   ~ 0
A11
NoConn ~ 7250 2550
$EndSCHEMATC
