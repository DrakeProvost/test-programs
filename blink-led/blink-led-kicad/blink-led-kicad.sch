EESchema Schematic File Version 4
LIBS:blink-led-kicad-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "15 nov 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 650  7600 0    50   ~ 0
ID_SD and ID_SC PINS:\nThese pins are reserved for HAT ID EEPROM.\n\nAt boot time this I2C interface will be\ninterrogated to look for an EEPROM\nthat identifes the attached board and\nallows automagic setup of the GPIOs\n(and optionally, Linux drivers).\n\nDO NOT USE these pins for anything other\nthan attaching an I2C ID EEPROM. Leave\nunconnected if ID EEPROM not required.
$Comp
L blink-led-kicad-rescue:Mounting_Hole-Mechanical MK1
U 1 1 5834FB2E
P 3000 7200
F 0 "MK1" H 3100 7246 50  0000 L CNN
F 1 "M2.5" H 3100 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3000 7200 60  0001 C CNN
F 3 "" H 3000 7200 60  0001 C CNN
	1    3000 7200
	1    0    0    -1  
$EndComp
$Comp
L blink-led-kicad-rescue:Mounting_Hole-Mechanical MK3
U 1 1 5834FBEF
P 3450 7200
F 0 "MK3" H 3550 7246 50  0000 L CNN
F 1 "M2.5" H 3550 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3450 7200 60  0001 C CNN
F 3 "" H 3450 7200 60  0001 C CNN
	1    3450 7200
	1    0    0    -1  
$EndComp
$Comp
L blink-led-kicad-rescue:Mounting_Hole-Mechanical MK2
U 1 1 5834FC19
P 3000 7400
F 0 "MK2" H 3100 7446 50  0000 L CNN
F 1 "M2.5" H 3100 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3000 7400 60  0001 C CNN
F 3 "" H 3000 7400 60  0001 C CNN
	1    3000 7400
	1    0    0    -1  
$EndComp
$Comp
L blink-led-kicad-rescue:Mounting_Hole-Mechanical MK4
U 1 1 5834FC4F
P 3450 7400
F 0 "MK4" H 3550 7446 50  0000 L CNN
F 1 "M2.5" H 3550 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3450 7400 60  0001 C CNN
F 3 "" H 3450 7400 60  0001 C CNN
	1    3450 7400
	1    0    0    -1  
$EndComp
Text Notes 3000 7050 0    50   ~ 0
Mounting Holes
$Comp
L Device:R_US R1
U 1 1 5EF4C28F
P 3650 5400
F 0 "R1" V 3445 5400 50  0000 C CNN
F 1 "330" V 3536 5400 50  0000 C CNN
F 2 "" V 3690 5390 50  0001 C CNN
F 3 "~" H 3650 5400 50  0001 C CNN
	1    3650 5400
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even P1
U 1 1 59AD464A
P 5700 3950
F 0 "P1" H 5750 5067 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 5750 4976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 850 3000 50  0001 C CNN
F 3 "" H 850 3000 50  0001 C CNN
	1    5700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3050 6000 3050
Wire Wire Line
	6200 3150 6000 3150
Wire Wire Line
	6100 3250 6100 3650
Wire Wire Line
	6100 4650 6000 4650
Wire Wire Line
	6100 4450 6000 4450
Connection ~ 6100 4650
Wire Wire Line
	6100 3950 6000 3950
Connection ~ 6100 4450
Wire Wire Line
	6100 3650 6000 3650
Connection ~ 6100 3950
Wire Wire Line
	5400 3450 5400 4250
Wire Wire Line
	5400 4250 5500 4250
Wire Wire Line
	5300 3850 5500 3850
Wire Wire Line
	5300 3050 5500 3050
Wire Wire Line
	5400 3450 5500 3450
Connection ~ 5400 4250
Wire Wire Line
	5500 3150 4350 3150
Wire Wire Line
	4350 3250 5500 3250
Wire Wire Line
	4350 3650 5500 3650
Wire Wire Line
	4350 3750 5500 3750
Wire Wire Line
	5500 3950 4350 3950
Wire Wire Line
	4350 4050 5500 4050
Wire Wire Line
	4350 4150 5500 4150
Wire Wire Line
	5500 4350 4350 4350
Wire Wire Line
	4350 4450 5500 4450
Wire Wire Line
	4350 4550 5500 4550
Wire Wire Line
	5500 4650 4350 4650
Wire Wire Line
	4350 4750 5500 4750
Wire Wire Line
	6000 4750 7050 4750
Wire Wire Line
	6000 4250 7050 4250
Wire Wire Line
	6000 4350 7050 4350
Wire Wire Line
	6000 4050 7050 4050
Wire Wire Line
	6000 4150 7050 4150
Wire Wire Line
	6000 3750 7050 3750
Wire Wire Line
	6000 3850 7050 3850
Wire Wire Line
	6000 3450 7050 3450
Wire Wire Line
	6000 3550 7050 3550
Wire Wire Line
	6000 3350 7050 3350
Wire Wire Line
	6000 4550 7050 4550
Text Label 4350 3150 0    50   ~ 0
GPIO2(SDA1)
Text Label 4350 3250 0    50   ~ 0
GPIO3(SCL1)
Text Label 4350 3350 0    50   ~ 0
GPIO4(GCLK)
Text Label 4350 3550 0    50   ~ 0
GPIO17(GEN0)
Text Label 4350 3650 0    50   ~ 0
GPIO27(GEN2)
Text Label 4350 3750 0    50   ~ 0
GPIO22(GEN3)
Text Label 4350 3950 0    50   ~ 0
GPIO10(SPI0_MOSI)
Text Label 4350 4050 0    50   ~ 0
GPIO9(SPI0_MISO)
Text Label 4350 4150 0    50   ~ 0
GPIO11(SPI0_SCK)
Text Label 4350 4350 0    50   ~ 0
ID_SD
Text Label 4350 4450 0    50   ~ 0
GPIO5
Text Label 4350 4550 0    50   ~ 0
GPIO6
Text Label 4350 4650 0    50   ~ 0
GPIO13(PWM1)
Text Label 4350 4750 0    50   ~ 0
GPIO19(SPI1_MISO)
Text Label 4350 4850 0    50   ~ 0
GPIO26
Text Label 7050 4850 2    50   ~ 0
GPIO20(SPI1_MOSI)
Text Label 7050 4750 2    50   ~ 0
GPIO16
Text Label 7050 4550 2    50   ~ 0
GPIO12(PWM0)
Text Label 7050 4350 2    50   ~ 0
ID_SC
Text Label 7050 4250 2    50   ~ 0
GPIO7(SPI1_CE_N)
Text Label 7050 4150 2    50   ~ 0
GPIO8(SPI0_CE_N)
Text Label 7050 4050 2    50   ~ 0
GPIO25(GEN6)
Text Label 7050 3850 2    50   ~ 0
GPIO24(GEN5)
Text Label 7050 3750 2    50   ~ 0
GPIO23(GEN4)
Text Label 7050 3550 2    50   ~ 0
GPIO18(GEN1)(PWM0)
Text Label 7050 3450 2    50   ~ 0
GPIO15(RXD0)
Text Label 7050 3350 2    50   ~ 0
GPIO14(TXD0)
Wire Wire Line
	6100 3250 6000 3250
Connection ~ 6100 3650
Wire Wire Line
	6200 3050 6200 3150
Wire Wire Line
	6100 4650 6100 5100
Wire Wire Line
	6100 4450 6100 4650
Wire Wire Line
	6100 3950 6100 4450
Wire Wire Line
	5300 3050 5300 3850
Wire Wire Line
	5400 4250 5400 4950
Wire Wire Line
	6100 3650 6100 3950
Connection ~ 5400 4950
Wire Wire Line
	5400 4950 5400 5100
Text Label 7050 4950 2    50   ~ 0
GPIO21(SPI1_SCK)
Wire Wire Line
	6000 4950 7050 4950
Wire Wire Line
	6000 4850 7050 4850
Wire Wire Line
	4350 4850 5500 4850
Wire Wire Line
	5400 4950 5500 4950
$Comp
L power:GND #PWR03
U 1 1 580C1E01
P 5400 5100
F 0 "#PWR03" H 5400 4850 50  0001 C CNN
F 1 "GND" H 5400 4950 50  0000 C CNN
F 2 "" H 5400 5100 50  0000 C CNN
F 3 "" H 5400 5100 50  0000 C CNN
	1    5400 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 580C1D11
P 6100 5100
F 0 "#PWR02" H 6100 4850 50  0001 C CNN
F 1 "GND" H 6100 4950 50  0000 C CNN
F 2 "" H 6100 5100 50  0000 C CNN
F 3 "" H 6100 5100 50  0000 C CNN
	1    6100 5100
	1    0    0    -1  
$EndComp
Connection ~ 5300 3050
Connection ~ 6200 3050
$Comp
L power:+5V #PWR01
U 1 1 580C1B61
P 6200 2900
F 0 "#PWR01" H 6200 2750 50  0001 C CNN
F 1 "+5V" H 6200 3040 50  0000 C CNN
F 2 "" H 6200 2900 50  0000 C CNN
F 3 "" H 6200 2900 50  0000 C CNN
	1    6200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 580C1BC1
P 5300 2900
F 0 "#PWR04" H 5300 2750 50  0001 C CNN
F 1 "+3.3V" H 5300 3040 50  0000 C CNN
F 2 "" H 5300 2900 50  0000 C CNN
F 3 "" H 5300 2900 50  0000 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2900 5300 3050
Wire Wire Line
	6200 2900 6200 3050
$Comp
L Device:LED D1
U 1 1 5EF4BACB
P 3200 3600
F 0 "D1" V 3239 3483 50  0000 R CNN
F 1 "LED" V 3148 3483 50  0000 R CNN
F 2 "" H 3200 3600 50  0001 C CNN
F 3 "~" H 3200 3600 50  0001 C CNN
	1    3200 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 3550 4350 3550
Wire Wire Line
	3200 3350 3200 3450
Wire Wire Line
	3200 3350 5500 3350
Wire Wire Line
	3200 3750 3200 5400
Wire Wire Line
	3200 5400 3500 5400
Wire Wire Line
	3800 5400 5400 5400
Wire Wire Line
	5400 5400 5400 5100
Connection ~ 5400 5100
$EndSCHEMATC
