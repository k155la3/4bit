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
LIBS:big-mess-o-wires
LIBS:4bit-cache
EELAYER 27 0
EELAYER END
$Descr User 18976 12992
encoding utf-8
Sheet 1 1
Title ""
Date "13 nov 2015"
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
P 8550 2500
F 0 "PC2" V 8600 2800 60  0000 C CNN
F 1 "74LS163" V 8600 2350 60  0000 C CNN
F 2 "~" H 8550 2500 60  0000 C CNN
F 3 "~" H 8550 2500 60  0000 C CNN
	1    8550 2500
	0    1    1    0   
$EndComp
$Comp
L 74LS163 PC1
U 1 1 56393DB4
P 10000 2500
F 0 "PC1" V 10050 2750 60  0000 C CNN
F 1 "74LS163" V 10050 2300 60  0000 C CNN
F 2 "~" H 10000 2500 60  0000 C CNN
F 3 "~" H 10000 2500 60  0000 C CNN
	1    10000 2500
	0    1    1    0   
$EndComp
$Comp
L 74LS163 PC0
U 1 1 56393DBF
P 11450 2500
F 0 "PC0" V 11500 2800 60  0000 C CNN
F 1 "74LS163" V 11500 2300 60  0000 C CNN
F 2 "~" H 11450 2500 60  0000 C CNN
F 3 "~" H 11450 2500 60  0000 C CNN
	1    11450 2500
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR01
U 1 1 56393FE2
P 9900 1700
F 0 "#PWR01" H 9900 1800 30  0001 C CNN
F 1 "VCC" H 9900 1800 30  0000 C CNN
F 2 "" H 9900 1700 60  0000 C CNN
F 3 "" H 9900 1700 60  0000 C CNN
	1    9900 1700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 56393FF2
P 7800 1700
F 0 "#PWR02" H 7800 1800 30  0001 C CNN
F 1 "VCC" H 7800 1800 30  0000 C CNN
F 2 "" H 7800 1700 60  0000 C CNN
F 3 "" H 7800 1700 60  0000 C CNN
	1    7800 1700
	0    -1   -1   0   
$EndComp
Text GLabel 7750 1550 0    60   Input ~ 0
CLK
Text GLabel 7750 1250 0    60   Input ~ 0
~RST
Text GLabel 7750 1400 0    60   Input ~ 0
~LDPC
Text GLabel 11150 1000 0    60   Input ~ 0
INCPC
$Comp
L VCC #PWR03
U 1 1 5639438E
P 11350 1700
F 0 "#PWR03" H 11350 1800 30  0001 C CNN
F 1 "VCC" H 11350 1800 30  0000 C CNN
F 2 "" H 11350 1700 60  0000 C CNN
F 3 "" H 11350 1700 60  0000 C CNN
	1    11350 1700
	1    0    0    -1  
$EndComp
Entry Wire Line
	10750 4000 10850 4100
Entry Wire Line
	11950 3650 12050 3750
Entry Wire Line
	10650 4000 10750 4100
Entry Wire Line
	10550 4000 10650 4100
Entry Wire Line
	10450 4000 10550 4100
Entry Wire Line
	10350 4000 10450 4100
Entry Wire Line
	10250 4000 10350 4100
Entry Wire Line
	10150 4000 10250 4100
Entry Wire Line
	10050 4000 10150 4100
Entry Wire Line
	9950 4000 10050 4100
Entry Wire Line
	9850 4000 9950 4100
Entry Wire Line
	9750 4000 9850 4100
Entry Wire Line
	9650 4000 9750 4100
Entry Wire Line
	11850 3650 11950 3750
Entry Wire Line
	11750 3650 11850 3750
Entry Wire Line
	11650 3650 11750 3750
Entry Wire Line
	10500 3650 10600 3750
Entry Wire Line
	10400 3650 10500 3750
Entry Wire Line
	10300 3650 10400 3750
Entry Wire Line
	10200 3650 10300 3750
Entry Wire Line
	9050 3650 9150 3750
Entry Wire Line
	8950 3650 9050 3750
Entry Wire Line
	8850 3650 8950 3750
Entry Wire Line
	8750 3650 8850 3750
NoConn ~ 8550 3200
$Comp
L 28C64 PROG0
U 1 1 56416023
P 10050 5150
F 0 "PROG0" V 10050 5600 60  0000 C CNN
F 1 "28C64" V 10050 4600 60  0000 C CNN
F 2 "big-mess-o-wires_DIL28" H 10080 5300 20  0001 C CNN
F 3 "" H 10050 5150 60  0000 C CNN
	1    10050 5150
	0    1    1    0   
$EndComp
$Comp
L 74LS377 FETCH0
U 1 1 564160FF
P 3200 2500
F 0 "FETCH0" V 3200 2800 60  0000 C CNN
F 1 "74LS377" V 3200 2250 60  0000 C CNN
F 2 "~" H 3200 2500 60  0000 C CNN
F 3 "~" H 3200 2500 60  0000 C CNN
	1    3200 2500
	0    1    1    0   
$EndComp
Text GLabel 2250 1600 0    60   Input ~ 0
CLK
Text GLabel 2250 1450 0    60   Input ~ 0
PHASE
Entry Wire Line
	2900 700  3000 800 
Entry Wire Line
	3000 700  3100 800 
Entry Wire Line
	3100 700  3200 800 
Entry Wire Line
	3200 700  3300 800 
Entry Wire Line
	3300 700  3400 800 
Entry Wire Line
	3400 700  3500 800 
Entry Wire Line
	3500 700  3600 800 
Entry Wire Line
	3600 700  3700 800 
Entry Wire Line
	11850 700  11950 800 
Entry Wire Line
	11750 700  11850 800 
Entry Wire Line
	11650 700  11750 800 
Entry Wire Line
	11550 700  11650 800 
Entry Wire Line
	10400 700  10500 800 
Entry Wire Line
	10300 700  10400 800 
Entry Wire Line
	10200 700  10300 800 
Entry Wire Line
	10100 700  10200 800 
Entry Wire Line
	10150 6150 10250 6250
Entry Wire Line
	10250 6150 10350 6250
Entry Wire Line
	10350 6150 10450 6250
Entry Wire Line
	10450 6150 10550 6250
Entry Wire Line
	10550 6150 10650 6250
Entry Wire Line
	10650 6150 10750 6250
Entry Wire Line
	10750 6150 10850 6250
Entry Wire Line
	10850 6150 10950 6250
Entry Wire Line
	8950 1100 9050 1200
Entry Wire Line
	8850 1100 8950 1200
Entry Wire Line
	8750 1100 8850 1200
Entry Wire Line
	8650 1100 8750 1200
Entry Wire Line
	3450 4000 3550 4100
Entry Wire Line
	3550 4000 3650 4100
Entry Wire Line
	3650 4000 3750 4100
Entry Wire Line
	3750 4000 3850 4100
$Comp
L 74LS74 RESET0
U 2 1 56417113
P 6100 2400
F 0 "RESET0" V 6250 2400 60  0000 C CNN
F 1 "74LS74" V 6000 2400 60  0000 C CNN
F 2 "~" H 6100 2400 60  0000 C CNN
F 3 "~" H 6100 2400 60  0000 C CNN
	2    6100 2400
	0    1    1    0   
$EndComp
$Comp
L 74LS74 PHASE0
U 1 1 56417127
P 7100 2650
F 0 "PHASE0" V 7250 2650 60  0000 C CNN
F 1 "74LS74" V 7000 2650 60  0000 C CNN
F 2 "~" H 7100 2650 60  0000 C CNN
F 3 "~" H 7100 2650 60  0000 C CNN
	1    7100 2650
	0    1    1    0   
$EndComp
Text GLabel 5800 3350 0    60   Input ~ 0
~RST
Text GLabel 5800 3150 0    60   Input ~ 0
RST
$Comp
L VCC #PWR04
U 1 1 56417439
P 5550 1400
F 0 "#PWR04" H 5550 1500 30  0001 C CNN
F 1 "VCC" H 5550 1500 30  0000 C CNN
F 2 "" H 5550 1400 60  0000 C CNN
F 3 "" H 5550 1400 60  0000 C CNN
	1    5550 1400
	1    0    0    -1  
$EndComp
Text GLabel 5800 3550 0    60   Input ~ 0
PHASE
Text Label 10850 6150 1    60   ~ 0
PROG0
Text Label 10550 6150 1    60   ~ 0
PROG3
Text Label 10450 6150 1    60   ~ 0
PROG4
Text Label 10350 6150 1    60   ~ 0
PROG5
Text Label 10250 6150 1    60   ~ 0
PROG6
Text Label 10150 6150 1    60   ~ 0
PROG7
Text Label 10750 6150 1    60   ~ 0
PROG1
Text Label 11950 1650 1    60   ~ 0
PROG0
Text Label 11850 1650 1    60   ~ 0
PROG1
Text Label 11750 1650 1    60   ~ 0
PROG2
Text Label 11650 1650 1    60   ~ 0
PROG3
Text Label 10500 1650 1    60   ~ 0
PROG4
Text Label 10400 1650 1    60   ~ 0
PROG5
Text Label 10300 1650 1    60   ~ 0
PROG6
Text Label 10200 1650 1    60   ~ 0
PROG7
Text Label 3700 1450 1    60   ~ 0
PROG0
Text Label 3600 1450 1    60   ~ 0
PROG1
Text Label 3500 1450 1    60   ~ 0
PROG2
Text Label 3400 1450 1    60   ~ 0
PROG3
Text Label 3300 1450 1    60   ~ 0
PROG4
Text Label 3200 1450 1    60   ~ 0
PROG5
Text Label 3100 1450 1    60   ~ 0
PROG6
Text Label 3000 1450 1    60   ~ 0
PROG7
Text Label 3750 3650 1    60   ~ 0
OPND0
Text Label 3650 3650 1    60   ~ 0
OPND1
Text Label 3550 3650 1    60   ~ 0
OPND2
Text Label 3450 3650 1    60   ~ 0
OPND3
Text Label 9050 1650 1    60   ~ 0
OPND0
Text Label 8950 1650 1    60   ~ 0
OPND1
Text Label 8850 1650 1    60   ~ 0
OPND2
Text Label 8750 1650 1    60   ~ 0
OPND3
Text Label 10650 6150 1    60   ~ 0
PROG2
NoConn ~ 9150 4500
$Comp
L VCC #PWR05
U 1 1 56418667
P 9250 4350
F 0 "#PWR05" H 9250 4450 30  0001 C CNN
F 1 "VCC" H 9250 4450 30  0000 C CNN
F 2 "" H 9250 4350 60  0000 C CNN
F 3 "" H 9250 4350 60  0000 C CNN
	1    9250 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5641867A
P 8900 4450
F 0 "#PWR06" H 8900 4450 30  0001 C CNN
F 1 "GND" H 8900 4380 30  0001 C CNN
F 2 "" H 8900 4450 60  0000 C CNN
F 3 "" H 8900 4450 60  0000 C CNN
	1    8900 4450
	1    0    0    -1  
$EndComp
$Comp
L B3FS-10XX M0
U 1 1 5641891A
P 6000 1250
F 0 "M0" V 5715 1150 50  0000 L BNN
F 1 "B3FS-10XX" V 6000 1250 50  0001 L BNN
F 2 "big-mess-o-wires_B3FS" H 6030 1400 20  0001 C CNN
F 3 "" H 6000 1250 60  0000 C CNN
	1    6000 1250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 56418A37
P 5300 1450
F 0 "#PWR07" H 5300 1450 30  0001 C CNN
F 1 "GND" H 5300 1380 30  0001 C CNN
F 2 "" H 5300 1450 60  0000 C CNN
F 3 "" H 5300 1450 60  0000 C CNN
	1    5300 1450
	1    0    0    -1  
$EndComp
$Comp
L R R0
U 1 1 56418BF5
P 5950 1450
F 0 "R0" V 6030 1450 40  0000 C CNN
F 1 "R" V 5957 1451 40  0000 C CNN
F 2 "~" V 5880 1450 30  0000 C CNN
F 3 "~" H 5950 1450 30  0000 C CNN
	1    5950 1450
	0    1    1    0   
$EndComp
$Comp
L CP1 C0
U 1 1 56418D24
P 6600 1250
F 0 "C0" H 6650 1350 50  0000 L CNN
F 1 "CP1" H 6650 1150 50  0000 L CNN
F 2 "~" H 6600 1250 60  0000 C CNN
F 3 "~" H 6600 1250 60  0000 C CNN
	1    6600 1250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 56418D33
P 6950 1400
F 0 "#PWR08" H 6950 1400 30  0001 C CNN
F 1 "GND" H 6950 1330 30  0001 C CNN
F 2 "" H 6950 1400 60  0000 C CNN
F 3 "" H 6950 1400 60  0000 C CNN
	1    6950 1400
	1    0    0    -1  
$EndComp
Text GLabel 1800 4300 0    60   Input ~ 0
RST
$Comp
L CRYSTAL_SMD X0
U 1 1 56419116
P 950 1300
F 0 "X0" H 950 1390 30  0000 C CNN
F 1 "CRYSTAL_SMD" H 980 1190 30  0000 L CNN
F 2 "~" H 950 1300 60  0000 C CNN
F 3 "~" H 950 1300 60  0000 C CNN
	1    950  1300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 56419125
P 700 1250
F 0 "#PWR09" H 700 1350 30  0001 C CNN
F 1 "VCC" H 700 1350 30  0000 C CNN
F 2 "" H 700 1250 60  0000 C CNN
F 3 "" H 700 1250 60  0000 C CNN
	1    700  1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 56419134
P 1350 1350
F 0 "#PWR010" H 1350 1350 30  0001 C CNN
F 1 "GND" H 1350 1280 30  0001 C CNN
F 2 "" H 1350 1350 60  0000 C CNN
F 3 "" H 1350 1350 60  0000 C CNN
	1    1350 1350
	1    0    0    -1  
$EndComp
Text GLabel 800  1550 0    60   Input ~ 0
CLK
$Comp
L PWR_FLAG #FLG011
U 1 1 5641A492
P 750 650
F 0 "#FLG011" H 750 745 30  0001 C CNN
F 1 "PWR_FLAG" H 750 830 30  0000 C CNN
F 2 "" H 750 650 60  0000 C CNN
F 3 "" H 750 650 60  0000 C CNN
	1    750  650 
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR012
U 1 1 5641A563
P 850 650
F 0 "#PWR012" H 850 750 30  0001 C CNN
F 1 "VCC" H 850 750 30  0000 C CNN
F 2 "" H 850 650 60  0000 C CNN
F 3 "" H 850 650 60  0000 C CNN
	1    850  650 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG013
U 1 1 5641A7BA
P 750 850
F 0 "#FLG013" H 750 945 30  0001 C CNN
F 1 "PWR_FLAG" H 750 1030 30  0000 C CNN
F 2 "" H 750 850 60  0000 C CNN
F 3 "" H 750 850 60  0000 C CNN
	1    750  850 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR014
U 1 1 5641A7D8
P 850 900
F 0 "#PWR014" H 850 900 30  0001 C CNN
F 1 "GND" H 850 830 30  0001 C CNN
F 2 "" H 850 900 60  0000 C CNN
F 3 "" H 850 900 60  0000 C CNN
	1    850  900 
	1    0    0    -1  
$EndComp
$Comp
L 28C16 UCODE0
U 1 1 5645358C
P 3050 5550
F 0 "UCODE0" V 3100 5800 60  0000 L BNN
F 1 "28C16" V 3100 5000 60  0000 L BNN
F 2 "big-mess-o-wires_DIL24" H 3080 5700 20  0001 C CNN
F 3 "~" H 3050 5550 60  0000 C CNN
	1    3050 5550
	0    1    1    0   
$EndComp
Text GLabel 1850 4500 0    60   Input ~ 0
PHASE
Entry Wire Line
	3050 4200 3150 4300
Entry Wire Line
	3150 4200 3250 4300
Entry Wire Line
	3250 4200 3350 4300
Entry Wire Line
	3350 4200 3450 4300
Entry Wire Line
	3550 4300 3650 4400
Entry Wire Line
	3450 4300 3550 4400
Entry Wire Line
	3350 4300 3450 4400
Entry Wire Line
	3250 4300 3350 4400
Text Label 3350 3650 1    60   ~ 0
INSTR0
Text Label 3250 3650 1    60   ~ 0
INSTR1
Text Label 3150 3650 1    60   ~ 0
INSTR2
Text Label 3050 3650 1    60   ~ 0
INSTR3
Text Label 3650 4850 1    60   ~ 0
INSTR0
Text Label 3550 4850 1    60   ~ 0
INSTR1
Text Label 3450 4850 1    60   ~ 0
INSTR2
Text Label 3350 4850 1    60   ~ 0
INSTR3
$Comp
L VCC #PWR015
U 1 1 564541FD
P 2350 4700
F 0 "#PWR015" H 2350 4800 30  0001 C CNN
F 1 "VCC" H 2350 4800 30  0000 C CNN
F 2 "" H 2350 4700 60  0000 C CNN
F 3 "" H 2350 4700 60  0000 C CNN
	1    2350 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5645420C
P 2050 4900
F 0 "#PWR016" H 2050 4900 30  0001 C CNN
F 1 "GND" H 2050 4830 30  0001 C CNN
F 2 "" H 2050 4900 60  0000 C CNN
F 3 "" H 2050 4900 60  0000 C CNN
	1    2050 4900
	1    0    0    -1  
$EndComp
Text GLabel 2850 6850 0    60   Input ~ 0
INCPC
Text GLabel 2850 6700 0    60   Input ~ 0
~LDPC
$Comp
L 28C16 UCODE1
U 1 1 56454A08
P 5000 5550
F 0 "UCODE1" V 5050 5800 60  0000 L BNN
F 1 "28C16" V 5050 5000 60  0000 L BNN
F 2 "big-mess-o-wires_DIL24" H 5030 5700 20  0001 C CNN
F 3 "~" H 5000 5550 60  0000 C CNN
	1    5000 5550
	0    1    1    0   
$EndComp
Entry Wire Line
	5500 4300 5600 4400
Entry Wire Line
	5400 4300 5500 4400
Entry Wire Line
	5300 4300 5400 4400
Entry Wire Line
	5200 4300 5300 4400
Text Label 5600 4850 1    60   ~ 0
INSTR0
Text Label 5500 4850 1    60   ~ 0
INSTR1
Text Label 5400 4850 1    60   ~ 0
INSTR2
Text Label 5300 4850 1    60   ~ 0
INSTR3
$Comp
L VCC #PWR017
U 1 1 56454E38
P 4300 4700
F 0 "#PWR017" H 4300 4800 30  0001 C CNN
F 1 "VCC" H 4300 4800 30  0000 C CNN
F 2 "" H 4300 4700 60  0000 C CNN
F 3 "" H 4300 4700 60  0000 C CNN
	1    4300 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 56454F18
P 4000 4900
F 0 "#PWR018" H 4000 4900 30  0001 C CNN
F 1 "GND" H 4000 4830 30  0001 C CNN
F 2 "" H 4000 4900 60  0000 C CNN
F 3 "" H 4000 4900 60  0000 C CNN
	1    4000 4900
	1    0    0    -1  
$EndComp
NoConn ~ 5000 6250
NoConn ~ 5100 6250
NoConn ~ 5200 6250
NoConn ~ 5300 6250
NoConn ~ 5400 6250
$Comp
L 74LS173 ACU0
U 1 1 564555B1
P 4800 8000
F 0 "ACU0" V 4850 8250 60  0000 C CNN
F 1 "74LS173" V 4850 7750 60  0000 C CNN
F 2 "~" H 4800 8000 60  0000 C CNN
F 3 "~" H 4800 8000 60  0000 C CNN
	1    4800 8000
	0    1    1    0   
$EndComp
$Comp
L 74LS181 ALU0
U 1 1 564555C0
P 2950 8800
F 0 "ALU0" V 2950 9150 60  0000 C CNN
F 1 "74LS181" V 2900 8300 60  0000 C CNN
F 2 "~" H 2950 8800 60  0000 C CNN
F 3 "~" H 2950 8800 60  0000 C CNN
	1    2950 8800
	0    1    1    0   
$EndComp
Entry Wire Line
	4950 6950 5050 7050
Entry Wire Line
	5050 6950 5150 7050
Entry Wire Line
	5150 6950 5250 7050
Entry Wire Line
	5250 6950 5350 7050
Entry Wire Line
	3150 9750 3250 9850
Entry Wire Line
	3250 9750 3350 9850
Entry Wire Line
	3350 9750 3450 9850
Entry Wire Line
	3450 9750 3550 9850
Entry Wire Line
	3550 7650 3650 7750
Entry Wire Line
	3450 7650 3550 7750
Entry Wire Line
	3350 7650 3450 7750
Entry Wire Line
	3250 7650 3350 7750
Entry Wire Line
	5050 9000 5150 9100
Entry Wire Line
	5150 9000 5250 9100
Entry Wire Line
	5250 9000 5350 9100
Entry Wire Line
	5350 9000 5450 9100
NoConn ~ 2300 9500
NoConn ~ 2400 9500
NoConn ~ 2600 9500
Text Label 3450 9750 1    60   ~ 0
ALUF0
Text Label 3350 9750 1    60   ~ 0
ALUF1
Text Label 3250 9750 1    60   ~ 0
ALUF2
Text Label 3150 9750 1    60   ~ 0
ALUF3
Text Label 5350 7300 1    60   ~ 0
ALUF0
Text Label 5250 7300 1    60   ~ 0
ALUF1
Text Label 5150 7300 1    60   ~ 0
ALUF2
Text Label 5050 7300 1    60   ~ 0
ALUF3
Text Label 5350 9000 1    60   ~ 0
ALUA0
Text Label 5250 9000 1    60   ~ 0
ALUA1
Text Label 5150 9000 1    60   ~ 0
ALUA2
Text Label 5050 9000 1    60   ~ 0
ALUA3
Text Label 3650 8100 1    60   ~ 0
ALUA0
Text Label 3550 8100 1    60   ~ 0
ALUA1
Text Label 3450 8100 1    60   ~ 0
ALUA2
Text Label 3350 8100 1    60   ~ 0
ALUA3
Text GLabel 4100 7150 0    60   Input ~ 0
~LDACU
Text GLabel 4100 6950 0    60   Input ~ 0
CLK
$Comp
L GND #PWR019
U 1 1 56457DEB
P 3900 7450
F 0 "#PWR019" H 3900 7450 30  0001 C CNN
F 1 "GND" H 3900 7380 30  0001 C CNN
F 2 "" H 3900 7450 60  0000 C CNN
F 3 "" H 3900 7450 60  0000 C CNN
	1    3900 7450
	1    0    0    -1  
$EndComp
Text GLabel 5800 6400 2    60   Input ~ 0
~OEOP
Text GLabel 5800 6550 2    60   Input ~ 0
~LDACU
Text GLabel 5800 6700 2    60   Input ~ 0
~LDFL
Text GLabel 2600 9700 0    60   Input ~ 0
~CROUT
$Comp
L 74LS173 FLAGS0
U 1 1 564586DE
P 4650 2500
F 0 "FLAGS0" V 4650 2850 60  0000 C CNN
F 1 "74LS173" V 4650 2250 60  0000 C CNN
F 2 "~" H 4650 2500 60  0000 C CNN
F 3 "~" H 4650 2500 60  0000 C CNN
	1    4650 2500
	0    1    1    0   
$EndComp
Text GLabel 4200 1500 0    60   Input ~ 0
~LDFL
Text GLabel 4200 1350 0    60   Input ~ 0
~CROUT
Text GLabel 4200 1200 0    60   Input ~ 0
~ZERO
$Comp
L GND #PWR020
U 1 1 56458B85
P 3900 1900
F 0 "#PWR020" H 3900 1900 30  0001 C CNN
F 1 "GND" H 3900 1830 30  0001 C CNN
F 2 "" H 3900 1900 60  0000 C CNN
F 3 "" H 3900 1900 60  0000 C CNN
	1    3900 1900
	1    0    0    -1  
$EndComp
Entry Wire Line
	5200 4200 5300 4300
Entry Wire Line
	5100 4200 5200 4300
Entry Wire Line
	5000 4300 5100 4400
Text Label 5200 3600 1    60   ~ 0
~C
Text Label 5100 3600 1    60   ~ 0
~Z
Text Label 5200 4850 1    60   ~ 0
~C
Text Label 5100 4850 1    60   ~ 0
~Z
Entry Wire Line
	3150 4300 3250 4400
Entry Wire Line
	3050 4300 3150 4400
Text Label 3250 4850 1    60   ~ 0
~C
Text Label 3150 4850 1    60   ~ 0
~Z
NoConn ~ 4900 3200
NoConn ~ 5000 3200
Entry Wire Line
	5100 4300 5200 4400
$Comp
L 74LS244 BUS0
U 1 1 5645ADF6
P 7050 8500
F 0 "BUS0" H 7100 8300 60  0000 C CNN
F 1 "74LS244" H 7150 8100 60  0000 C CNN
F 2 "~" H 7050 8500 60  0000 C CNN
F 3 "~" H 7050 8500 60  0000 C CNN
	1    7050 8500
	0    1    1    0   
$EndComp
Entry Wire Line
	3150 7750 3250 7850
Entry Wire Line
	3050 7750 3150 7850
Entry Wire Line
	2950 7750 3050 7850
Entry Wire Line
	2850 7750 2950 7850
Text Label 3250 8100 1    60   ~ 0
ALUB0
Text Label 3150 8100 1    60   ~ 0
ALUB1
Text Label 3050 8100 1    60   ~ 0
ALUB2
Text Label 2950 8100 1    60   ~ 0
ALUB3
Text GLabel 6300 7350 0    60   Input ~ 0
~OEOP
Entry Wire Line
	7150 6850 7250 6950
Entry Wire Line
	7250 6850 7350 6950
Entry Wire Line
	7350 6850 7450 6950
Entry Wire Line
	7450 6850 7550 6950
Text Label 7550 7300 1    60   ~ 0
OPND0
Text Label 7450 7300 1    60   ~ 0
OPND1
Text Label 7350 7300 1    60   ~ 0
OPND2
Text Label 7250 7300 1    60   ~ 0
OPND3
Entry Wire Line
	7250 9900 7350 10000
Entry Wire Line
	7350 9900 7450 10000
Entry Wire Line
	7450 9900 7550 10000
Entry Wire Line
	7550 9900 7650 10000
Text Label 7550 9900 1    60   ~ 0
ALUB0
Text Label 7450 9900 1    60   ~ 0
ALUB1
Text Label 7350 9900 1    60   ~ 0
ALUB2
Text Label 7250 9900 1    60   ~ 0
ALUB3
$Comp
L VCC #PWR021
U 1 1 5645D02E
P 6550 7550
F 0 "#PWR021" H 6550 7650 30  0001 C CNN
F 1 "VCC" H 6550 7650 30  0000 C CNN
F 2 "" H 6550 7550 60  0000 C CNN
F 3 "" H 6550 7550 60  0000 C CNN
	1    6550 7550
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 ZERO0
U 1 1 5645D180
P 4550 10400
F 0 "ZERO0" H 4550 10450 60  0000 C CNN
F 1 "74LS32" H 4550 10350 60  0000 C CNN
F 2 "~" H 4550 10400 60  0000 C CNN
F 3 "~" H 4550 10400 60  0000 C CNN
	1    4550 10400
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 ZERO0
U 3 1 5645D18F
P 5750 10600
F 0 "ZERO0" H 5750 10650 60  0000 C CNN
F 1 "74LS32" H 5750 10550 60  0000 C CNN
F 2 "~" H 5750 10600 60  0000 C CNN
F 3 "~" H 5750 10600 60  0000 C CNN
	3    5750 10600
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 ZERO0
U 2 1 5645D1A8
P 4550 10850
F 0 "ZERO0" H 4550 10900 60  0000 C CNN
F 1 "74LS32" H 4550 10800 60  0000 C CNN
F 2 "~" H 4550 10850 60  0000 C CNN
F 3 "~" H 4550 10850 60  0000 C CNN
	2    4550 10850
	1    0    0    -1  
$EndComp
Text GLabel 6500 10600 2    60   Input ~ 0
~ZERO
Wire Bus Line
	3050 4300 6250 4300
Wire Wire Line
	3750 4500 3750 4850
Wire Wire Line
	1850 4500 5700 4500
Wire Bus Line
	12150 4000 12150 3750
Wire Wire Line
	850  850  850  900 
Wire Wire Line
	750  850  850  850 
Wire Wire Line
	700  1300 750  1300
Wire Wire Line
	750  650  850  650 
Wire Wire Line
	6950 1250 6800 1250
Wire Wire Line
	6950 1400 6950 1250
Wire Wire Line
	8450 1700 8450 1800
Wire Wire Line
	7800 1700 8450 1700
Wire Wire Line
	950  1550 800  1550
Wire Wire Line
	950  1400 950  1550
Wire Wire Line
	1350 1300 1350 1350
Wire Wire Line
	1150 1300 1350 1300
Wire Wire Line
	700  1250 700  1300
Connection ~ 6300 1250
Connection ~ 5550 1450
Wire Wire Line
	5700 1450 5550 1450
Connection ~ 6300 1450
Wire Wire Line
	6200 1450 6300 1450
Connection ~ 5700 1250
Wire Wire Line
	5700 1350 5800 1350
Wire Wire Line
	5700 1250 5700 1350
Wire Wire Line
	5300 1250 5800 1250
Wire Wire Line
	5300 1450 5300 1250
Connection ~ 6300 1350
Wire Wire Line
	6200 1350 6300 1350
Wire Wire Line
	6300 1250 6300 1800
Wire Wire Line
	6200 1250 6400 1250
Connection ~ 9350 4400
Wire Wire Line
	9350 4400 9350 4500
Connection ~ 9450 4400
Wire Wire Line
	9450 4400 9450 4500
Wire Wire Line
	9650 4400 9650 4500
Wire Wire Line
	8900 4400 9650 4400
Wire Wire Line
	8900 4450 8900 4400
Wire Wire Line
	9250 4350 9250 4500
Wire Wire Line
	7300 3550 7300 3250
Wire Wire Line
	5800 3550 7300 3550
Wire Wire Line
	7300 1950 7300 2050
Wire Wire Line
	7750 1950 7300 1950
Wire Wire Line
	7750 3350 7750 1950
Wire Wire Line
	6900 3350 7750 3350
Wire Wire Line
	6900 3250 6900 3350
Connection ~ 6650 1750
Wire Wire Line
	6650 2400 6650 1750
Connection ~ 5550 1750
Wire Wire Line
	5550 1400 5550 2400
Wire Wire Line
	7650 1750 5550 1750
Wire Wire Line
	7650 1750 7650 2650
Connection ~ 6300 3350
Wire Wire Line
	6550 3350 6550 2650
Wire Wire Line
	5900 3150 5900 3000
Wire Wire Line
	5800 3150 5900 3150
Wire Wire Line
	6300 3350 6300 3000
Wire Wire Line
	5800 3350 6550 3350
Connection ~ 6100 1600
Wire Wire Line
	7100 1600 7100 2050
Connection ~ 2800 1600
Wire Wire Line
	6100 1600 6100 1800
Wire Wire Line
	3750 3200 3750 4000
Wire Wire Line
	3650 3200 3650 4000
Wire Wire Line
	3550 3200 3550 4000
Wire Wire Line
	3450 3200 3450 4000
Wire Wire Line
	9050 1200 9050 1800
Wire Wire Line
	8950 1200 8950 1800
Wire Wire Line
	8850 1200 8850 1800
Wire Wire Line
	8750 1200 8750 1800
Wire Bus Line
	7850 1100 9050 1100
Wire Bus Line
	7850 1100 7850 6850
Wire Bus Line
	7850 4100 3450 4100
Wire Wire Line
	3700 800  3700 1800
Wire Wire Line
	3600 800  3600 1800
Wire Wire Line
	3500 800  3500 1800
Wire Wire Line
	3400 800  3400 1800
Wire Wire Line
	3300 800  3300 1800
Wire Wire Line
	3200 800  3200 1800
Wire Wire Line
	3100 800  3100 1800
Wire Wire Line
	3000 800  3000 1800
Wire Wire Line
	10850 5800 10850 6150
Wire Wire Line
	10750 5800 10750 6150
Wire Wire Line
	10650 5800 10650 6150
Wire Wire Line
	10550 5800 10550 6150
Wire Wire Line
	10450 5800 10450 6150
Wire Wire Line
	10350 5800 10350 6150
Wire Wire Line
	10250 5800 10250 6150
Wire Wire Line
	10150 5800 10150 6150
Wire Bus Line
	12300 6250 10050 6250
Wire Bus Line
	12300 700  12300 6250
Wire Wire Line
	10200 800  10200 1800
Wire Wire Line
	10300 800  10300 1800
Wire Wire Line
	10400 800  10400 1800
Wire Wire Line
	10500 800  10500 1800
Wire Wire Line
	11650 800  11650 1800
Wire Wire Line
	11750 800  11750 1800
Wire Wire Line
	11850 800  11850 1800
Wire Wire Line
	11950 800  11950 1800
Wire Bus Line
	2800 700  12300 700 
Wire Wire Line
	2700 1450 2700 1800
Wire Wire Line
	2250 1450 2700 1450
Wire Wire Line
	2800 1600 2800 1800
Wire Wire Line
	2250 1600 7100 1600
Wire Bus Line
	12150 3750 8850 3750
Wire Bus Line
	9550 4000 12150 4000
Wire Wire Line
	8750 3200 8750 3650
Wire Wire Line
	8850 3200 8850 3650
Wire Wire Line
	8950 3200 8950 3650
Wire Wire Line
	9050 3200 9050 3650
Wire Wire Line
	10200 3200 10200 3650
Wire Wire Line
	10300 3200 10300 3650
Wire Wire Line
	10400 3200 10400 3650
Wire Wire Line
	10500 3200 10500 3650
Wire Wire Line
	11650 3200 11650 3650
Wire Wire Line
	11750 3200 11750 3650
Wire Wire Line
	11850 3200 11850 3650
Wire Wire Line
	9750 4100 9750 4500
Wire Wire Line
	9850 4100 9850 4500
Wire Wire Line
	9950 4100 9950 4500
Wire Wire Line
	10050 4100 10050 4500
Wire Wire Line
	10150 4100 10150 4500
Wire Wire Line
	10250 4100 10250 4500
Wire Wire Line
	10350 4100 10350 4500
Wire Wire Line
	10450 4100 10450 4500
Wire Wire Line
	10550 4100 10550 4500
Wire Wire Line
	10650 4100 10650 4500
Wire Wire Line
	10750 4100 10750 4500
Wire Wire Line
	11950 3200 11950 3650
Wire Wire Line
	10850 4100 10850 4500
Wire Wire Line
	11350 1700 11350 1800
Wire Wire Line
	11250 1000 11250 1800
Connection ~ 9700 1550
Connection ~ 8250 1550
Wire Wire Line
	7750 1550 11150 1550
Connection ~ 10000 1400
Wire Wire Line
	11450 1400 11450 1800
Connection ~ 8550 1400
Wire Wire Line
	10000 1400 10000 1800
Wire Wire Line
	8550 1400 8550 1800
Wire Wire Line
	7750 1400 11450 1400
Connection ~ 9500 1250
Wire Wire Line
	10950 1250 10950 1800
Connection ~ 8050 1250
Wire Wire Line
	9500 1250 9500 1800
Wire Wire Line
	8050 1250 8050 1800
Wire Wire Line
	7750 1250 10950 1250
Wire Wire Line
	8250 1800 8250 1550
Wire Wire Line
	9700 1550 9700 1800
Wire Wire Line
	11150 1550 11150 1800
Wire Wire Line
	9900 1700 9900 1800
Wire Wire Line
	8350 1750 8350 1800
Wire Wire Line
	9300 1750 8350 1750
Wire Wire Line
	9300 3250 9300 1750
Wire Wire Line
	10000 3250 9300 3250
Wire Wire Line
	10000 3200 10000 3250
Wire Wire Line
	9800 1750 9800 1800
Wire Wire Line
	10750 1750 9800 1750
Wire Wire Line
	10750 3250 10750 1750
Wire Wire Line
	11450 3250 10750 3250
Wire Wire Line
	11450 3200 11450 3250
Wire Wire Line
	3050 3200 3050 4200
Wire Wire Line
	3150 3200 3150 4200
Wire Wire Line
	3250 3200 3250 4200
Wire Wire Line
	3350 3200 3350 4200
Wire Wire Line
	3650 4400 3650 4850
Wire Wire Line
	3550 4400 3550 4850
Wire Wire Line
	3450 4400 3450 4850
Wire Wire Line
	3350 4400 3350 4850
Wire Wire Line
	2050 4750 2050 4900
Wire Wire Line
	3050 4750 3050 4850
Wire Wire Line
	2950 4750 2950 4850
Connection ~ 2950 4750
Wire Wire Line
	2850 4750 2850 4850
Connection ~ 2850 4750
Wire Wire Line
	2750 4750 2750 4850
Connection ~ 2750 4750
Wire Wire Line
	2550 4750 2550 4850
Connection ~ 2550 4750
Wire Wire Line
	2450 4750 2450 4850
Connection ~ 2450 4750
Wire Wire Line
	2350 4700 2350 4850
Wire Wire Line
	2850 6850 3750 6850
Wire Wire Line
	3750 6850 3750 6250
Wire Wire Line
	2850 6700 3650 6700
Wire Wire Line
	3650 6700 3650 6250
Wire Wire Line
	5700 4500 5700 4850
Connection ~ 3750 4500
Wire Wire Line
	5600 4400 5600 4850
Wire Wire Line
	5500 4400 5500 4850
Wire Wire Line
	5400 4400 5400 4850
Wire Wire Line
	5300 4400 5300 4850
Wire Wire Line
	4300 4700 4300 4850
Wire Wire Line
	4000 4900 4000 4750
Wire Wire Line
	5000 4750 5000 4850
Wire Wire Line
	4900 4750 4900 4850
Connection ~ 4900 4750
Wire Wire Line
	4800 4750 4800 4850
Connection ~ 4800 4750
Wire Wire Line
	4700 4750 4700 4850
Connection ~ 4700 4750
Wire Wire Line
	4500 4750 4500 4850
Connection ~ 4500 4750
Wire Wire Line
	4400 4750 4400 4850
Connection ~ 4400 4750
Wire Wire Line
	3550 6250 3550 7500
Wire Wire Line
	3550 7500 2250 7500
Wire Wire Line
	3450 6250 3450 7400
Wire Wire Line
	3450 7400 2350 7400
Wire Wire Line
	2250 7500 2250 8100
Wire Wire Line
	2350 7400 2350 8100
Wire Wire Line
	3350 6250 3350 7300
Wire Wire Line
	3350 7300 2800 7300
Wire Wire Line
	2800 7300 2800 8100
Wire Wire Line
	3250 6250 3250 7200
Wire Wire Line
	3250 7200 2700 7200
Wire Wire Line
	2700 7200 2700 8100
Wire Wire Line
	3150 6250 3150 7100
Wire Wire Line
	3150 7100 2600 7100
Wire Wire Line
	2600 7100 2600 8100
Wire Wire Line
	3050 6250 3050 7000
Wire Wire Line
	3050 7000 2500 7000
Wire Wire Line
	2500 7000 2500 8100
Wire Bus Line
	3250 7650 3950 7650
Wire Bus Line
	3950 7650 3950 9100
Wire Bus Line
	3950 9100 5450 9100
Wire Bus Line
	5750 9850 3050 9850
Wire Bus Line
	5750 6950 5750 9850
Wire Wire Line
	5050 7050 5050 7300
Wire Wire Line
	5150 7050 5150 7300
Wire Wire Line
	5250 7050 5250 7300
Wire Wire Line
	5350 7050 5350 7300
Wire Wire Line
	3350 7750 3350 8100
Wire Wire Line
	3450 7750 3450 8100
Wire Wire Line
	3550 7750 3550 8100
Wire Wire Line
	3650 7750 3650 8100
Wire Wire Line
	5050 8700 5050 9000
Wire Wire Line
	5150 8700 5150 9000
Wire Wire Line
	5250 8700 5250 9000
Wire Wire Line
	5350 8700 5350 9000
Wire Wire Line
	3450 9500 3450 9750
Wire Wire Line
	3350 9500 3350 9750
Wire Wire Line
	3250 9500 3250 9750
Wire Wire Line
	3150 9500 3150 9750
Wire Wire Line
	4100 7150 4650 7150
Wire Wire Line
	4650 7150 4650 7300
Wire Wire Line
	4550 7150 4550 7300
Connection ~ 4550 7150
Wire Wire Line
	4100 6950 4450 6950
Wire Wire Line
	4450 6950 4450 7300
Wire Wire Line
	3900 7450 3900 7250
Wire Wire Line
	3900 7250 4900 7250
Wire Wire Line
	4900 7250 4900 7300
Wire Wire Line
	4800 7250 4800 7300
Connection ~ 4800 7250
Wire Wire Line
	4250 7250 4250 7300
Connection ~ 4250 7250
Wire Wire Line
	5700 6250 5700 6400
Wire Wire Line
	5700 6400 5800 6400
Wire Wire Line
	5600 6250 5600 6550
Wire Wire Line
	5600 6550 5800 6550
Wire Wire Line
	5500 6250 5500 6700
Wire Wire Line
	5500 6700 5800 6700
Wire Wire Line
	2600 9700 2700 9700
Wire Wire Line
	2700 9700 2700 9500
Wire Wire Line
	4200 1500 4500 1500
Wire Wire Line
	4500 1500 4500 1800
Wire Wire Line
	4400 1500 4400 1800
Connection ~ 4400 1500
Wire Wire Line
	4200 1350 5200 1350
Wire Wire Line
	5200 1350 5200 1800
Wire Wire Line
	4200 1200 5100 1200
Wire Wire Line
	5100 1200 5100 1800
Wire Wire Line
	3900 1900 3900 1700
Wire Wire Line
	3900 1700 5000 1700
Wire Wire Line
	5000 1700 5000 1800
Wire Wire Line
	4900 1700 4900 1800
Connection ~ 4900 1700
Wire Wire Line
	4750 1700 4750 1800
Connection ~ 4750 1700
Wire Wire Line
	4650 1700 4650 1800
Connection ~ 4650 1700
Wire Wire Line
	4100 1700 4100 1800
Connection ~ 4100 1700
Wire Wire Line
	4300 1600 4300 1800
Connection ~ 4300 1600
Wire Wire Line
	2050 4750 3050 4750
Wire Wire Line
	4000 4750 5000 4750
Wire Wire Line
	5200 3200 5200 4200
Wire Wire Line
	5100 3200 5100 4200
Wire Wire Line
	5200 4400 5200 4850
Wire Wire Line
	5100 4400 5100 4850
Wire Wire Line
	3250 4400 3250 4850
Wire Wire Line
	3150 4400 3150 4850
Wire Bus Line
	1850 10000 7700 10000
Wire Bus Line
	1850 10000 1850 7750
Wire Bus Line
	1850 7750 3250 7750
Wire Wire Line
	3250 7850 3250 8100
Wire Wire Line
	3150 7850 3150 8100
Wire Wire Line
	3050 7850 3050 8100
Wire Wire Line
	2950 7850 2950 8100
Wire Wire Line
	6300 7350 6650 7350
Wire Wire Line
	6650 7350 6650 7800
Wire Bus Line
	7850 6850 7150 6850
Wire Wire Line
	7250 6950 7250 7800
Wire Wire Line
	7350 6950 7350 7800
Wire Wire Line
	7450 6950 7450 7800
Wire Wire Line
	7550 6950 7550 7800
Wire Wire Line
	7550 9200 7550 9900
Wire Wire Line
	7450 9200 7450 9900
Wire Wire Line
	7350 9200 7350 9900
Wire Wire Line
	7250 9200 7250 9900
Wire Wire Line
	6550 7550 6550 7800
Wire Wire Line
	5150 10400 5150 10500
Wire Wire Line
	5150 10700 5150 10850
Wire Wire Line
	6350 10600 6500 10600
Entry Wire Line
	3850 9850 3950 9950
Entry Wire Line
	3750 9850 3850 9950
Entry Wire Line
	3650 9850 3750 9950
Entry Wire Line
	3550 9850 3650 9950
Wire Wire Line
	3950 9950 3950 10300
Wire Wire Line
	3850 9950 3850 10500
Wire Wire Line
	3850 10500 3950 10500
Wire Wire Line
	3750 9950 3750 10750
Wire Wire Line
	3750 10750 3950 10750
Wire Wire Line
	3650 9950 3650 10950
Wire Wire Line
	3650 10950 3950 10950
Text Label 3950 10300 1    60   ~ 0
ALUF0
Text Label 3850 10300 1    60   ~ 0
ALUF1
Text Label 3750 10300 1    60   ~ 0
ALUF2
Text Label 3650 10300 1    60   ~ 0
ALUF3
Wire Bus Line
	4900 6950 5750 6950
NoConn ~ 6850 9200
NoConn ~ 6950 9200
NoConn ~ 7050 9200
NoConn ~ 7150 9200
$Comp
L GND #PWR022
U 1 1 5645DFFE
P 6200 7900
F 0 "#PWR022" H 6200 7900 30  0001 C CNN
F 1 "GND" H 6200 7830 30  0001 C CNN
F 2 "" H 6200 7900 60  0000 C CNN
F 3 "" H 6200 7900 60  0000 C CNN
	1    6200 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 7900 6200 7650
Wire Wire Line
	6200 7650 7150 7650
Wire Wire Line
	7150 7650 7150 7800
Wire Wire Line
	7050 7650 7050 7800
Connection ~ 7050 7650
Wire Wire Line
	6950 7650 6950 7800
Connection ~ 6950 7650
Wire Wire Line
	6850 7650 6850 7800
Connection ~ 6850 7650
Text Notes 5100 9300 0    60   ~ 0
ALUA
Text Notes 3650 9700 0    60   ~ 0
ALUF
Text Notes 7350 10200 0    60   ~ 0
ALUB
Text Notes 6850 4000 0    60   ~ 0
OPRND
Text Notes 4050 4450 0    60   ~ 0
INSTR + CZ
Text Notes 7350 6700 0    60   ~ 0
OPRND
Text Notes 8300 1000 0    60   ~ 0
OPRND
Text Notes 4800 900  0    60   ~ 0
PROG
Text Notes 10450 6450 0    60   ~ 0
PROG
Text Notes 10300 3900 0    60   ~ 0
PADDR
Wire Wire Line
	11150 1000 11250 1000
Wire Wire Line
	1800 4300 2050 4300
NoConn ~ 2050 4300
Text Label 10850 4500 1    60   ~ 0
PADDR0
Text Label 10750 4500 1    60   ~ 0
PADDR1
Text Label 10650 4500 1    60   ~ 0
PADDR2
Text Label 10550 4500 1    60   ~ 0
PADDR3
Text Label 10450 4500 1    60   ~ 0
PADDR4
Text Label 10350 4500 1    60   ~ 0
PADDR5
Text Label 10250 4500 1    60   ~ 0
PADDR6
Text Label 10150 4500 1    60   ~ 0
PADDR7
Text Label 10050 4500 1    60   ~ 0
PADDR8
Text Label 9950 4500 1    60   ~ 0
PADDR9
Text Label 9850 4500 1    60   ~ 0
PADDR10
Text Label 9750 4500 1    60   ~ 0
PADDR11
Text Label 11950 3650 1    60   ~ 0
PADDR0
Text Label 11850 3650 1    60   ~ 0
PADDR1
Text Label 11750 3650 1    60   ~ 0
PADDR2
Text Label 11650 3650 1    60   ~ 0
PADDR3
Text Label 10500 3650 1    60   ~ 0
PADDR4
Text Label 10400 3650 1    60   ~ 0
PADDR5
Text Label 10300 3650 1    60   ~ 0
PADDR6
Text Label 10200 3650 1    60   ~ 0
PADDR7
Text Label 9050 3650 1    60   ~ 0
PADDR8
Text Label 8950 3650 1    60   ~ 0
PADDR9
Text Label 8850 3650 1    60   ~ 0
PADDR10
Text Label 8750 3650 1    60   ~ 0
PADDR11
Text Notes 2900 7650 0    60   ~ 0
ALUB
Text Notes 3600 7550 0    60   ~ 0
ALUA
Text Notes 5050 6850 0    60   ~ 0
ALUF
$EndSCHEMATC
