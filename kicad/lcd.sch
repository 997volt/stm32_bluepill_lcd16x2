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
L Device:R_POT RV1
U 1 1 5FC5BF71
P 2850 3350
F 0 "RV1" H 2781 3396 50  0000 R CNN
F 1 "R_POT" H 2781 3305 50  0000 R CNN
F 2 "" H 2850 3350 50  0001 C CNN
F 3 "~" H 2850 3350 50  0001 C CNN
	1    2850 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FC5E366
P 2850 3500
F 0 "#PWR02" H 2850 3250 50  0001 C CNN
F 1 "GND" H 2855 3327 50  0000 C CNN
F 2 "" H 2850 3500 50  0001 C CNN
F 3 "" H 2850 3500 50  0001 C CNN
	1    2850 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5FC5EB58
P 2850 3200
F 0 "#PWR01" H 2850 3050 50  0001 C CNN
F 1 "+5V" H 2865 3373 50  0000 C CNN
F 2 "" H 2850 3200 50  0001 C CNN
F 3 "" H 2850 3200 50  0001 C CNN
	1    2850 3200
	1    0    0    -1  
$EndComp
Text GLabel 5600 2950 2    50   Input ~ 0
Vpot
$Comp
L power:GND #PWR07
U 1 1 5FC6482A
P 5850 3350
F 0 "#PWR07" H 5850 3100 50  0001 C CNN
F 1 "GND" H 5855 3177 50  0000 L BNN
F 2 "" H 5850 3350 50  0001 C CNN
F 3 "" H 5850 3350 50  0001 C CNN
	1    5850 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FC65D21
P 5200 4350
F 0 "#PWR05" H 5200 4100 50  0001 C CNN
F 1 "GND" H 5205 4177 50  0000 C CNN
F 2 "" H 5200 4350 50  0001 C CNN
F 3 "" H 5200 4350 50  0001 C CNN
	1    5200 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FC668B5
P 4200 3050
F 0 "#PWR03" H 4200 2800 50  0001 C CNN
F 1 "GND" H 4205 2877 50  0000 R BNN
F 2 "" H 4200 3050 50  0001 C CNN
F 3 "" H 4200 3050 50  0001 C CNN
	1    4200 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 5FC6A17F
P 5850 3250
F 0 "#PWR06" H 5850 3100 50  0001 C CNN
F 1 "+3V3" H 5865 3423 50  0000 L TNN
F 2 "" H 5850 3250 50  0001 C CNN
F 3 "" H 5850 3250 50  0001 C CNN
	1    5850 3250
	1    0    0    -1  
$EndComp
Text GLabel 4600 2950 0    50   Input ~ 0
LCD_E
Text GLabel 4650 4150 0    50   Input ~ 0
LCD_D7
Text GLabel 4650 4050 0    50   Input ~ 0
LCD_D6
Text GLabel 4650 3950 0    50   Input ~ 0
LCD_D5
Text GLabel 4650 3850 0    50   Input ~ 0
LCD_D4
Text GLabel 4650 3150 0    50   Input ~ 0
LCD_RS
Text GLabel 3000 3350 2    50   Input ~ 0
Vpot
NoConn ~ 4800 3450
NoConn ~ 4800 3550
NoConn ~ 4800 3650
NoConn ~ 4800 3750
NoConn ~ 5600 3950
NoConn ~ 5600 3850
NoConn ~ 5600 3650
NoConn ~ 5600 3550
Wire Wire Line
	5600 3250 5850 3250
Wire Wire Line
	5600 3350 5850 3350
Text GLabel 8400 3950 2    50   Input ~ 0
LCD_RS
Text GLabel 8400 3750 2    50   Input ~ 0
LCD_E
Text GLabel 7100 3150 0    50   Input ~ 0
LCD_D4
Text GLabel 7100 3250 0    50   Input ~ 0
LCD_D5
Text GLabel 7100 3350 0    50   Input ~ 0
LCD_D6
Text GLabel 7100 3450 0    50   Input ~ 0
LCD_D7
$Comp
L power:GND #PWR08
U 1 1 5FC7792E
P 7250 4700
F 0 "#PWR08" H 7250 4450 50  0001 C CNN
F 1 "GND" H 7255 4527 50  0000 C CNN
F 2 "" H 7250 4700 50  0001 C CNN
F 3 "" H 7250 4700 50  0001 C CNN
	1    7250 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 5FC786C3
P 7600 1400
F 0 "#PWR09" H 7600 1250 50  0001 C CNN
F 1 "+3V3" H 7615 1573 50  0000 C CNN
F 2 "" H 7600 1400 50  0001 C CNN
F 3 "" H 7600 1400 50  0001 C CNN
	1    7600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1400 7600 1550
Wire Wire Line
	4650 4150 4800 4150
Wire Wire Line
	4800 4050 4650 4050
Wire Wire Line
	4800 3950 4650 3950
Wire Wire Line
	4800 3850 4650 3850
Wire Wire Line
	4800 3150 4650 3150
Wire Wire Line
	4200 3050 4800 3050
Wire Wire Line
	4800 2950 4600 2950
$Comp
L power:+5V #PWR04
U 1 1 5FC63BB8
P 4950 2750
F 0 "#PWR04" H 4950 2600 50  0001 C CNN
F 1 "+5V" H 4965 2923 50  0000 C CNN
F 2 "" H 4950 2750 50  0001 C CNN
F 3 "" H 4950 2750 50  0001 C CNN
	1    4950 2750
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:LCD-016N002L U1
U 1 1 5FC5AEDE
P 5200 3550
F 0 "U1" H 5200 4531 50  0000 C CNN
F 1 "LCD-016N002L" H 5200 4440 50  0000 L TNN
F 2 "Display:LCD-016N002L" H 5220 2630 50  0001 C CNN
F 3 "http://www.vishay.com/docs/37299/37299.pdf" H 5700 3250 50  0001 C CNN
	1    5200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2750 4950 2750
Wire Wire Line
	7250 4550 7250 4700
NoConn ~ 7100 3550
NoConn ~ 7100 3650
NoConn ~ 7100 3750
NoConn ~ 7100 3850
NoConn ~ 7100 3950
NoConn ~ 7100 4050
NoConn ~ 7100 4150
NoConn ~ 7100 4250
NoConn ~ 7100 4350
NoConn ~ 8400 4150
NoConn ~ 8400 4050
NoConn ~ 8400 3850
NoConn ~ 8400 3650
NoConn ~ 8400 3550
NoConn ~ 8400 3450
NoConn ~ 8400 3350
NoConn ~ 8400 3250
NoConn ~ 8400 2850
NoConn ~ 8400 2950
NoConn ~ 8400 3050
NoConn ~ 8400 3150
NoConn ~ 7100 3050
NoConn ~ 7100 2950
NoConn ~ 7100 2850
NoConn ~ 7100 2650
NoConn ~ 7100 2550
NoConn ~ 7100 2450
NoConn ~ 7100 2250
NoConn ~ 7100 2150
Connection ~ 7800 4550
Connection ~ 7700 4550
Wire Wire Line
	7700 4550 7600 4550
Wire Wire Line
	7600 4550 7250 4550
Connection ~ 7600 4550
Wire Wire Line
	7800 4550 7700 4550
Wire Wire Line
	7900 4550 7800 4550
Connection ~ 7900 1550
Wire Wire Line
	7900 1550 8000 1550
Wire Wire Line
	7800 1550 7900 1550
Connection ~ 7800 1550
Connection ~ 7700 1550
Connection ~ 7600 1550
Wire Wire Line
	7700 1550 7800 1550
Wire Wire Line
	7600 1550 7700 1550
$Comp
L MCU_ST_STM32F1:STM32F103CBTx U2
U 1 1 5FC5C87E
P 7800 3050
F 0 "U2" H 7750 1461 50  0000 C CNN
F 1 "STM32F103CBTx" H 7750 1370 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 7200 1650 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 7800 3050 50  0001 C CNN
	1    7800 3050
	1    0    0    -1  
$EndComp
Text GLabel 8400 4250 2    50   Input ~ 0
JTCK-SWCLK
Text GLabel 8400 4350 2    50   Input ~ 0
JTMS-SWDIO
Text GLabel 7100 1950 0    50   Input ~ 0
BOOT0
Text GLabel 7100 1750 0    50   Input ~ 0
NRST
$EndSCHEMATC
