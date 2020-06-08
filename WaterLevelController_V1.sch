EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Water Level Controller V1"
Date "2020-05-27"
Rev "WLC-2220"
Comp "Open Hardware"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:CP C1
U 1 1 5E31C224
P 7750 1900
F 0 "C1" H 7868 1991 50  0000 L CNN
F 1 "1000µF" H 7868 1900 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D10.0mm_P5.00mm" H 7788 1750 50  0001 C CNN
F 3 "~" H 7750 1900 50  0001 C CNN
F 4 "16V" H 7868 1809 50  0000 L CNN "Voltage"
	1    7750 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E31D4D0
P 7750 2150
F 0 "#PWR0101" H 7750 1900 50  0001 C CNN
F 1 "GND" H 7755 1977 50  0000 C CNN
F 2 "" H 7750 2150 50  0001 C CNN
F 3 "" H 7750 2150 50  0001 C CNN
	1    7750 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E31F4CB
P 8250 1900
F 0 "C2" H 8365 1991 50  0000 L CNN
F 1 "100nF" H 8365 1900 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 8288 1750 50  0001 C CNN
F 3 "~" H 8250 1900 50  0001 C CNN
F 4 "16V" H 8365 1809 50  0000 L CNN "Voltage"
	1    8250 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E31FDB5
P 8250 2150
F 0 "#PWR0102" H 8250 1900 50  0001 C CNN
F 1 "GND" H 8255 1977 50  0000 C CNN
F 2 "" H 8250 2150 50  0001 C CNN
F 3 "" H 8250 2150 50  0001 C CNN
	1    8250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1650 7750 1650
Wire Wire Line
	7750 1650 7750 1750
Connection ~ 7750 1650
Wire Wire Line
	7750 2150 7750 2050
Wire Wire Line
	8250 1650 8250 1750
Wire Wire Line
	7750 1650 8250 1650
Wire Wire Line
	8250 2050 8250 2150
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5E3229DC
P 6550 1850
F 0 "J1" H 6550 2050 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 6550 1950 50  0001 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MC-G_02x3.81mm_Angled" H 6550 1850 50  0001 C CNN
F 3 "~" H 6550 1850 50  0001 C CNN
F 4 "+12V" H 6550 1950 50  0000 C CNN "Description"
	1    6550 1850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E323BAC
P 6850 2150
F 0 "#PWR0103" H 6850 1900 50  0001 C CNN
F 1 "GND" H 6855 1977 50  0000 C CNN
F 2 "" H 6850 2150 50  0001 C CNN
F 3 "" H 6850 2150 50  0001 C CNN
	1    6850 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 5E324C86
P 8250 1550
F 0 "#PWR0104" H 8250 1400 50  0001 C CNN
F 1 "+12V" H 8265 1723 50  0000 C CNN
F 2 "" H 8250 1550 50  0001 C CNN
F 3 "" H 8250 1550 50  0001 C CNN
	1    8250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1550 8250 1650
Connection ~ 8250 1650
$Comp
L Diode:1N4007 D2
U 1 1 5E329065
P 2450 1850
F 0 "D2" V 2400 1650 50  0000 L CNN
F 1 "1N4007" V 2500 1450 50  0000 L CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2450 1675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2450 1850 50  0001 C CNN
	1    2450 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 1700 2450 1450
Wire Wire Line
	2450 2000 2450 2250
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5E32B429
P 2350 2600
F 0 "Q1" H 2541 2646 50  0000 L CNN
F 1 "BC547" H 2541 2555 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 2550 2525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2350 2600 50  0001 L CNN
	1    2350 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E3304BC
P 1500 2850
F 0 "R2" H 1570 2896 50  0000 L CNN
F 1 "100K" H 1570 2805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1430 2850 50  0001 C CNN
F 3 "~" H 1500 2850 50  0001 C CNN
	1    1500 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E33114F
P 1500 3100
F 0 "#PWR0105" H 1500 2850 50  0001 C CNN
F 1 "GND" H 1505 2927 50  0000 C CNN
F 2 "" H 1500 3100 50  0001 C CNN
F 3 "" H 1500 3100 50  0001 C CNN
	1    1500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2400 2450 2250
Connection ~ 2450 2250
$Comp
L power:GND #PWR0106
U 1 1 5E331FFC
P 2450 3100
F 0 "#PWR0106" H 2450 2850 50  0001 C CNN
F 1 "GND" H 2455 2927 50  0000 C CNN
F 2 "" H 2450 3100 50  0001 C CNN
F 3 "" H 2450 3100 50  0001 C CNN
	1    2450 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5E332723
P 2450 1350
F 0 "#PWR0107" H 2450 1200 50  0001 C CNN
F 1 "+12V" H 2465 1523 50  0000 C CNN
F 2 "" H 2450 1350 50  0001 C CNN
F 3 "" H 2450 1350 50  0001 C CNN
	1    2450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1350 2450 1450
Connection ~ 2450 1450
Wire Wire Line
	1500 3100 1500 3000
Wire Wire Line
	2450 3100 2450 2800
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5E334405
P 1250 2250
F 0 "J2" H 1250 2350 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1250 2350 50  0001 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MC-G_02x3.81mm_Angled" H 1250 2250 50  0001 C CNN
F 3 "~" H 1250 2250 50  0001 C CNN
	1    1250 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2150 2600 2050 2600
$Comp
L power:+12V #PWR0108
U 1 1 5E3394CF
P 1500 1350
F 0 "#PWR0108" H 1500 1200 50  0001 C CNN
F 1 "+12V" H 1515 1523 50  0000 C CNN
F 2 "" H 1500 1350 50  0001 C CNN
F 3 "" H 1500 1350 50  0001 C CNN
	1    1500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1350 1500 1700
Wire Wire Line
	1450 2250 1500 2250
Wire Wire Line
	1500 2250 1500 2000
Wire Wire Line
	1500 2350 1450 2350
Wire Wire Line
	3000 1550 3000 1450
Wire Wire Line
	3000 2150 3000 2250
$Comp
L power:+12V #PWR0109
U 1 1 5E33D9CD
P 3800 1350
F 0 "#PWR0109" H 3800 1200 50  0001 C CNN
F 1 "+12V" H 3815 1523 50  0000 C CNN
F 2 "" H 3800 1350 50  0001 C CNN
F 3 "" H 3800 1350 50  0001 C CNN
	1    3800 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5E33F8D7
P 4300 2500
F 0 "D3" H 4293 2154 50  0000 C CNN
F 1 "LED" H 4293 2245 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm_FlatTop" H 4300 2500 50  0001 C CNN
F 3 "~" H 4300 2500 50  0001 C CNN
F 4 "RED" H 4293 2336 50  0000 C CNN "Color"
	1    4300 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5E340605
P 4800 2500
F 0 "R4" V 4593 2500 50  0000 C CNN
F 1 "3K3" V 4684 2500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4730 2500 50  0001 C CNN
F 3 "~" H 4800 2500 50  0001 C CNN
	1    4800 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 2500 4150 2500
$Comp
L power:GND #PWR0110
U 1 1 5E3419C3
P 5150 2500
F 0 "#PWR0110" H 5150 2250 50  0001 C CNN
F 1 "GND" V 5155 2372 50  0000 R CNN
F 2 "" H 5150 2500 50  0001 C CNN
F 3 "" H 5150 2500 50  0001 C CNN
	1    5150 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 2500 4450 2500
Wire Wire Line
	5150 2500 4950 2500
$Comp
L Device:Buzzer BZ1
U 1 1 5E3437CA
P 4800 2850
F 0 "BZ1" V 5000 2950 50  0000 R CNN
F 1 "Buzzer" V 5100 2950 50  0000 R CNN
F 2 "Buzzers_Beepers:Buzzer_12x9.5RM7.6" V 4775 2950 50  0001 C CNN
F 3 "~" V 4775 2950 50  0001 C CNN
	1    4800 2850
	0    -1   1    0   
$EndComp
Wire Wire Line
	3900 2500 3900 2750
Wire Wire Line
	3900 2750 4100 2750
$Comp
L power:GND #PWR0111
U 1 1 5E347DC2
P 5150 2750
F 0 "#PWR0111" H 5150 2500 50  0001 C CNN
F 1 "GND" V 5155 2622 50  0000 R CNN
F 2 "" H 5150 2750 50  0001 C CNN
F 3 "" H 5150 2750 50  0001 C CNN
	1    5150 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 2350 1500 2600
Connection ~ 1500 2600
Wire Wire Line
	1500 2600 1500 2700
Wire Wire Line
	1500 2600 1750 2600
$Comp
L Diode:1N4007 D4
U 1 1 5E35768F
P 2450 5050
F 0 "D4" V 2400 4850 50  0000 L CNN
F 1 "1N4007" V 2500 4650 50  0000 L CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2450 4875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2450 5050 50  0001 C CNN
	1    2450 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 2250 3000 2250
Wire Wire Line
	2450 1450 3000 1450
Wire Wire Line
	2900 4650 2900 4750
Wire Wire Line
	2900 5450 2900 5350
$Comp
L power:+12V #PWR0112
U 1 1 5E35FB5A
P 2450 3800
F 0 "#PWR0112" H 2450 3650 50  0001 C CNN
F 1 "+12V" H 2465 3973 50  0000 C CNN
F 2 "" H 2450 3800 50  0001 C CNN
F 3 "" H 2450 3800 50  0001 C CNN
	1    2450 3800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC557 Q2
U 1 1 5E360E1C
P 2350 4350
F 0 "Q2" H 2541 4304 50  0000 L CNN
F 1 "BC557" H 2541 4395 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 2550 4275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 2350 4350 50  0001 L CNN
	1    2350 4350
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5E368175
P 2450 5550
F 0 "#PWR0113" H 2450 5300 50  0001 C CNN
F 1 "GND" H 2455 5377 50  0000 C CNN
F 2 "" H 2450 5550 50  0001 C CNN
F 3 "" H 2450 5550 50  0001 C CNN
	1    2450 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E377E42
P 1500 4050
F 0 "R5" H 1570 4096 50  0000 L CNN
F 1 "100K" H 1570 4005 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1430 4050 50  0001 C CNN
F 3 "~" H 1500 4050 50  0001 C CNN
	1    1500 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4200 1500 4350
$Comp
L power:+12V #PWR0114
U 1 1 5E378E04
P 1500 3800
F 0 "#PWR0114" H 1500 3650 50  0001 C CNN
F 1 "+12V" H 1515 3973 50  0000 C CNN
F 2 "" H 1500 3800 50  0001 C CNN
F 3 "" H 1500 3800 50  0001 C CNN
	1    1500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3800 1500 3900
Wire Wire Line
	2450 3800 2450 4150
Wire Wire Line
	2000 4350 2150 4350
Wire Wire Line
	1700 4350 1500 4350
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5E37D96B
P 1250 5000
F 0 "J3" H 1250 5100 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1250 5100 50  0001 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MC-G_02x3.81mm_Angled" H 1250 5000 50  0001 C CNN
F 3 "~" H 1250 5000 50  0001 C CNN
	1    1250 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 5000 1500 5000
Connection ~ 1500 4350
$Comp
L power:GND #PWR0115
U 1 1 5E37F8D1
P 1500 5550
F 0 "#PWR0115" H 1500 5300 50  0001 C CNN
F 1 "GND" H 1505 5377 50  0000 C CNN
F 2 "" H 1500 5550 50  0001 C CNN
F 3 "" H 1500 5550 50  0001 C CNN
	1    1500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5100 1500 5100
Wire Wire Line
	1500 5100 1500 5550
$Comp
L Device:R R8
U 1 1 5E383AEC
P 4350 5500
F 0 "R8" V 4143 5500 50  0000 C CNN
F 1 "1K" V 4234 5500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4280 5500 50  0001 C CNN
F 3 "~" H 4350 5500 50  0001 C CNN
	1    4350 5500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5E387430
P 5100 5500
F 0 "#PWR0116" H 5100 5250 50  0001 C CNN
F 1 "GND" V 5105 5372 50  0000 R CNN
F 2 "" H 5100 5500 50  0001 C CNN
F 3 "" H 5100 5500 50  0001 C CNN
	1    5100 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 5500 5000 5500
Text GLabel 1400 4350 0    50   Input ~ 0
CONTROL
Wire Wire Line
	1400 4350 1500 4350
Text GLabel 3300 4500 1    50   Input ~ 0
CONTROL
$Comp
L Device:LED D6
U 1 1 5E390740
P 3400 6300
F 0 "D6" V 3484 6182 50  0000 R CNN
F 1 "LED" V 3393 6182 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm_FlatTop" H 3400 6300 50  0001 C CNN
F 3 "~" H 3400 6300 50  0001 C CNN
F 4 "YELLOW" V 3302 6182 50  0000 R CNN "Color"
	1    3400 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5E390746
P 3400 6700
F 0 "R10" H 3470 6746 50  0000 L CNN
F 1 "3K3" H 3470 6655 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3330 6700 50  0001 C CNN
F 3 "~" H 3400 6700 50  0001 C CNN
	1    3400 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6550 3400 6450
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5E3CCE75
P 5500 6250
F 0 "J4" H 5500 6350 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 5500 6350 50  0001 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MC-G_02x3.81mm_Angled" H 5500 6250 50  0001 C CNN
F 3 "~" H 5500 6250 50  0001 C CNN
	1    5500 6250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D5
U 1 1 5E3DB7FA
P 4900 6300
F 0 "D5" V 4850 6100 50  0000 L CNN
F 1 "1N4007" V 4950 5900 50  0000 L CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4900 6125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4900 6300 50  0001 C CNN
	1    4900 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 6150 3400 6000
$Comp
L power:GND #PWR0118
U 1 1 5E3E4C99
P 4350 6950
F 0 "#PWR0118" H 4350 6700 50  0001 C CNN
F 1 "GND" H 4355 6777 50  0000 C CNN
F 2 "" H 4350 6950 50  0001 C CNN
F 3 "" H 4350 6950 50  0001 C CNN
	1    4350 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 5E3F1AB1
P 2450 6300
F 0 "D7" V 2534 6182 50  0000 R CNN
F 1 "LED" V 2443 6182 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm_FlatTop" H 2450 6300 50  0001 C CNN
F 3 "~" H 2450 6300 50  0001 C CNN
F 4 "GREEN" V 2352 6182 50  0000 R CNN "Color"
	1    2450 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5E3F1AB7
P 2450 6700
F 0 "R11" H 2520 6746 50  0000 L CNN
F 1 "3K3" H 2520 6655 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2380 6700 50  0001 C CNN
F 3 "~" H 2450 6700 50  0001 C CNN
	1    2450 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6950 2450 6850
Wire Wire Line
	2450 6550 2450 6450
$Comp
L Switch:SW_Push SW1
U 1 1 5E404EFD
P 1500 6500
F 0 "SW1" V 1546 6452 50  0000 R CNN
F 1 "SW_Push" V 1455 6452 50  0000 R CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 1500 6700 50  0001 C CNN
F 3 "~" H 1500 6700 50  0001 C CNN
	1    1500 6500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 6950 1500 6700
Text GLabel 1400 6000 0    50   Input ~ 0
CONTROL
Wire Wire Line
	1400 6000 1500 6000
Wire Wire Line
	1500 6000 1500 6300
$Comp
L power:GND #PWR0119
U 1 1 5E4186AE
P 3400 6950
F 0 "#PWR0119" H 3400 6700 50  0001 C CNN
F 1 "GND" H 3405 6777 50  0000 C CNN
F 2 "" H 3400 6950 50  0001 C CNN
F 3 "" H 3400 6950 50  0001 C CNN
	1    3400 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6950 3400 6850
$Comp
L power:GND #PWR0120
U 1 1 5E41B2E0
P 2450 6950
F 0 "#PWR0120" H 2450 6700 50  0001 C CNN
F 1 "GND" H 2455 6777 50  0000 C CNN
F 2 "" H 2450 6950 50  0001 C CNN
F 3 "" H 2450 6950 50  0001 C CNN
	1    2450 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5E41B787
P 1500 6950
F 0 "#PWR0121" H 1500 6700 50  0001 C CNN
F 1 "GND" H 1505 6777 50  0000 C CNN
F 2 "" H 1500 6950 50  0001 C CNN
F 3 "" H 1500 6950 50  0001 C CNN
	1    1500 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5E41E916
P 1500 4700
F 0 "R7" H 1570 4746 50  0000 L CNN
F 1 "0R" H 1570 4655 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1430 4700 50  0001 C CNN
F 3 "~" H 1500 4700 50  0001 C CNN
	1    1500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4350 1500 4550
Wire Wire Line
	1500 4850 1500 5000
Wire Notes Line style solid rgb(0, 0, 255)
	10000 4500 7000 4500
Wire Notes Line style solid
	7000 4700 10000 4700
Text Notes 7100 4650 0    100  ~ 0
LED
Text Notes 7050 4950 0    100  ~ 0
GREEN
Text Notes 7050 5300 0    100  ~ 0
YELLOW
Text Notes 7050 5650 0    100  ~ 0
RED
Wire Notes Line style solid
	7000 5050 10000 5050
Wire Notes Line style solid
	7000 5400 10000 5400
Wire Notes Line style solid
	7000 5750 10000 5750
Wire Notes Line style solid
	7750 5750 7750 4500
Wire Notes Line style solid
	7000 4500 7000 5750
Wire Notes Line style solid
	10000 4500 10000 5750
$Comp
L Device:R R1
U 1 1 5E33900A
P 1500 1850
F 0 "R1" H 1570 1896 50  0000 L CNN
F 1 "10K" H 1570 1805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1430 1850 50  0001 C CNN
F 3 "~" H 1500 1850 50  0001 C CNN
	1    1500 1850
	1    0    0    -1  
$EndComp
Text Notes 900  5250 0    50   ~ 10
WATER\nLEVEL\nSWITCH\n[AQUARIUM]
Text Notes 900  2500 0    50   ~ 10
WATER\nLEVEL\nSWITCH\n[REFILLTANK]
Wire Wire Line
	3400 6000 3800 6000
Wire Wire Line
	4500 5500 4600 5500
$Comp
L Device:R R9
U 1 1 5E473D2E
P 4850 5700
F 0 "R9" V 4950 5600 50  0000 C CNN
F 1 "100K" V 4950 5800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4780 5700 50  0001 C CNN
F 3 "~" H 4850 5700 50  0001 C CNN
	1    4850 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 5700 4600 5700
Wire Wire Line
	4600 5700 4600 5500
Connection ~ 4600 5500
Wire Wire Line
	4600 5500 4700 5500
$Comp
L power:GND #PWR0117
U 1 1 5E476B91
P 5100 5700
F 0 "#PWR0117" H 5100 5450 50  0001 C CNN
F 1 "GND" V 5105 5572 50  0000 R CNN
F 2 "" H 5100 5700 50  0001 C CNN
F 3 "" H 5100 5700 50  0001 C CNN
	1    5100 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 5700 5000 5700
$Comp
L Relay:FINDER-40.52 K1
U 1 1 5E39EB29
P 3400 1850
F 0 "K1" H 4150 1800 50  0000 R CNN
F 1 "FINDER-40.52.9.012" H 4825 1900 50  0000 R CNN
F 2 "Relays_THT:Relay_DPDT_Finder_40.52" H 4750 1820 50  0001 C CNN
F 3 "http://gfinder.findernet.com/assets/Series/353/S40EN.pdf" H 3400 1850 50  0001 C CNN
	1    3400 1850
	1    0    0    1   
$EndComp
Wire Wire Line
	3800 1350 3800 1550
Wire Wire Line
	3900 2150 3900 2500
Connection ~ 3900 2500
$Comp
L Relay:FINDER-40.52 K2
U 1 1 5E3C59AB
P 3300 5050
F 0 "K2" H 4050 5000 50  0000 R CNN
F 1 "FINDER-40.52.9.012" H 4725 5100 50  0000 R CNN
F 2 "Relays_THT:Relay_DPDT_Finder_40.52" H 4650 5020 50  0001 C CNN
F 3 "http://gfinder.findernet.com/assets/Series/353/S40EN.pdf" H 3300 5050 50  0001 C CNN
	1    3300 5050
	1    0    0    1   
$EndComp
Wire Wire Line
	3700 2150 3700 4750
Wire Wire Line
	3300 4500 3300 4750
Wire Wire Line
	3400 5500 3400 5350
Wire Wire Line
	3800 5350 3800 6000
Connection ~ 3800 6000
Wire Wire Line
	2450 5850 3600 5850
Wire Wire Line
	3600 5850 3600 5350
Wire Wire Line
	2450 5850 2450 6150
Wire Wire Line
	3400 5500 4200 5500
Wire Wire Line
	2450 4550 2450 4650
Wire Wire Line
	2450 5200 2450 5550
Wire Wire Line
	2900 5450 2600 5450
Wire Wire Line
	2600 5450 2600 4650
Wire Wire Line
	2600 4650 2450 4650
Connection ~ 2450 4650
Wire Wire Line
	2450 4650 2450 4900
$Comp
L power:GND #PWR0122
U 1 1 5E41FFCB
P 2900 4650
F 0 "#PWR0122" H 2900 4400 50  0001 C CNN
F 1 "GND" H 2905 4477 50  0000 C CNN
F 2 "" H 2900 4650 50  0001 C CNN
F 3 "" H 2900 4650 50  0001 C CNN
	1    2900 4650
	-1   0    0    1   
$EndComp
Text Notes 5600 6500 0    50   ~ 10
WATER\nPUMP\nMOTOR\n[AQUARIUM]
$Comp
L Device:C C4
U 1 1 5ECEAE82
P 4350 6300
F 0 "C4" H 4050 6400 50  0000 L CNN
F 1 "10nF" H 4050 6300 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 4388 6150 50  0001 C CNN
F 3 "~" H 4350 6300 50  0001 C CNN
F 4 "16V" H 4050 6200 50  0000 L CNN "Voltage"
	1    4350 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6650 4350 6950
Wire Wire Line
	5300 6250 5200 6250
Wire Wire Line
	5200 6250 5200 6000
Wire Wire Line
	5300 6350 5200 6350
Wire Wire Line
	5200 6350 5200 6650
$Comp
L Device:R R3
U 1 1 5E336903
P 1900 2600
F 0 "R3" V 1693 2600 50  0000 C CNN
F 1 "0R" V 1784 2600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1830 2600 50  0001 C CNN
F 3 "~" H 1900 2600 50  0001 C CNN
	1    1900 2600
	0    1    1    0   
$EndComp
$Comp
L Device:CP C3
U 1 1 5E380F3A
P 4850 5500
F 0 "C3" V 5100 5700 50  0000 C CNN
F 1 "47µF" V 5100 5500 50  0000 C CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 4888 5350 50  0001 C CNN
F 3 "~" H 4850 5500 50  0001 C CNN
F 4 "16V" V 5000 5500 50  0000 C CNN "Voltage"
	1    4850 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E37B48A
P 1850 4350
F 0 "R6" V 1643 4350 50  0000 C CNN
F 1 "10K" V 1734 4350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1780 4350 50  0001 C CNN
F 3 "~" H 1850 4350 50  0001 C CNN
	1    1850 4350
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5822 D1
U 1 1 5ECE3CD5
P 7500 1650
F 0 "D1" H 7500 1434 50  0000 C CNN
F 1 "1N5822" H 7500 1525 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 7500 1475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 7500 1650 50  0001 C CNN
	1    7500 1650
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 5ED06D6E
P 4300 2750
F 0 "JP1" H 4300 2600 50  0000 C CNN
F 1 "Jumper_2_Open" H 4300 2500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4300 2750 50  0001 C CNN
F 3 "~" H 4300 2750 50  0001 C CNN
	1    4300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2750 5150 2750
Wire Wire Line
	4700 2750 4500 2750
Text Notes 7800 5300 0    100  ~ 0
Water Pump is running
Text Notes 7800 4950 0    100  ~ 0
Everything is fine
Text Notes 7800 5650 0    100  ~ 0
Refill tank is empty
Text Notes 7800 4650 0    100  ~ 0
Function
Text Notes 1550 2250 0    50   ~ 10
ZP3208
Text Notes 1550 5000 0    50   ~ 10
ZP3208
Text Notes 5600 6900 0    50   ~ 10
TMC\n04301\n100GPH\nDC12/2A
Wire Wire Line
	4350 6650 4900 6650
Wire Wire Line
	3800 6000 4350 6000
Wire Wire Line
	4350 6150 4350 6000
Connection ~ 4350 6000
Wire Wire Line
	4350 6000 4900 6000
Wire Wire Line
	4350 6450 4350 6650
Connection ~ 4350 6650
Wire Wire Line
	4900 6450 4900 6650
Connection ~ 4900 6650
Wire Wire Line
	4900 6650 5200 6650
Wire Wire Line
	4900 6000 4900 6150
Connection ~ 4900 6000
Wire Wire Line
	4900 6000 5200 6000
$Comp
L Device:Polyfuse F1
U 1 1 5EDADCE9
P 7100 1650
F 0 "F1" V 6875 1650 50  0000 C CNN
F 1 "MF-R250" V 6966 1650 50  0000 C CNN
F 2 "Fuse:Fuse_Bourns_MF-R250" H 7150 1450 50  0001 L CNN
F 3 "~" H 7100 1650 50  0001 C CNN
	1    7100 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 1650 7250 1650
Wire Wire Line
	6950 1650 6850 1650
Wire Wire Line
	6850 1650 6850 1850
Wire Wire Line
	6850 1850 6750 1850
Wire Wire Line
	6750 1950 6850 1950
Wire Wire Line
	6850 1950 6850 2150
$EndSCHEMATC
