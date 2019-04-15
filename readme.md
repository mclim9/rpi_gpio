Benchmarking Raspberry Pi
========================================================================

Description
------------------------------
    - Code from: http://codeandlife.com/2012/07/03/benchmarking-raspberry-pi-gpio-speed/
    - Various methods to toggle Raspberry Pi GPIO.  
    - Shows speed of each method.
    - Installation instructions added to each code snippet

|Language   | Library          |  Tested    | Version| Speed   |
|-----------|------------------|------------|--------|---------|
|Shell      | /proc/mem access | 2015-02-14 |        | 2.8 kHz |
|Shell_Util | WiringPi         | 2015-02-15 | 2.25   |  40 Hz  |
|Python     | RPi.GPIO         | 2015-02-15 | 0.5.10 |  70 kHz |
|Python     | wiringpi2        | 2015-02-15 | github |  28 kHz |
|Ruby       | wiringpi         | 2015-02-15 | 1.1.0  |  21 kHz |
|C          | Native library   | 2015-02-15 | latest |  22 MHz |
|C          | BCM 2835         | 2015-02-15 | 1.38   | 5.4 MHz |
|C          | wiringPi         | 2015-02-15 | 2.25   | 4.6 MHz |
|Perl       | BCM 2835         | 2015-02-15 | 1.9    |  48 kHz |

|               |RPi 3 A+       |RPi 3 B+       |RPi Zero WH    |RPi Zero W     |RPi 3 B        |RPi Zero       |RPi 2 B        |RPi A+         |RPi B          |
|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|
|Release date   |2018 Nov 15    |2018 Mar 14    |2018 Jan 12    |2017 Feb 28    |2016 Feb 29    |2015 Nov 30    |2015 Feb 1     |2014 Nov 10    |2012 Feb 15    |
|Price          |US$25.00       |US$35.00       |US$15.00       |US$10.00       |US$35.00       |US$5.00        |US$35.00       |US$20.00       |US$35.00       |
|SOC Type       |BCM2837 B0     |BCM2837 B0     |BCM2835        |BCM2835        |BCM2837        |BCM2835        | BCM2836       |BCM2835        |BCM2835        |
|Core Type      |Cortex-A53(64) |Cortex-A53(64) |ARM1176JZF-S   |ARM1176JZF-S   |Cortex-A53(64) |ARM1176JZF-S   |Cortex-A7      |ARM1176JZF-S   |ARM1176JZF-S   |
|No. Of Cores   |4              | 4             | 1             | 1             | 4             | 1             | 4             | 1             |1              |
|GPU            |VideoCore IV   |VideoCore IV   |VideoCore IV   |VideoCore IV   |VidCoreIV      |VideoCore IV   |VideoCore IV   |VideoCore IV   |VidCoreIV      |
|GPU Clock      |               |               |               |               |400MHz         |250MHz         |250MHz         |               |               |
|Resolution     |               |               |               |               |1080p@30       |               |               |               |1080p@30       |
|CPU Clock      |1.4 GHz        |1.4 GHz        |1 GHz          |1 GHz          |1.2 GHz        |1 GHz          |900 MHz        |700 MHz        |700 MHz        |
|RAM            |512 MB DDR2    |1 GB DDR2      |512 MB         |512 MB         |1 GB DDR2      |512 MB         |1 GB           |256 MB         |512 MB         |
|USB Ports      |1xUSB 2.0      |4xUSB 2.0      |micro OTG      |micro OTG      | 4             |micro OTG      | 4             | 1             |2x USB 2.0     |
|Ethernet       |No             |Gigabit(USB2.0)|No             |No             |10/100M        |No             |10/100M        |No             |Yes            |
|SATA Ports     |No             |No             |No             |No             |No             |No             |No             |No             |No             |
|HDMI port      |Full           |Full           |mini           |mini           |Full           |mini           |Full           |Full           |Full           |
|Analog Vid Out |3.5mm          |3.5mm          |PCB pin        |PCB pin        |3.5mm          |PCB pin        |3.5mm          |3.5mm          |RCA            |
|Analog Aud Out |3.5mm          |3.5mm          |HDMI audio     |HDMI audio     |3.5mm          |HDMI audio     |3.5mm          |3.5mm          |3.5mm          |
|Analog Aud In  |No             |No             |No             |No             |No             |No             |No             |No             |GPIO USB Mic   |
|SPI            |Yes            |Yes            |Yes            |Yes            |Yes            |Yes            |Yes            |Yes            |Yes            |
|I2C            |Yes            |Yes            |Yes            |Yes            |Yes            |Yes            |Yes            |Yes            |Yes            |
|GPIO           |40-pin         |40-pin         |40-pin         |40-pin         |40-pin         |40-pin         |Yes            |Yes            |26-pins        |
|LCD Panel      |Yes            |Yes            |No             |No             |Yes            |No             |Yes            |Yes            |Yes DSI        |
|Camera         |Yes            |Yes            |Yes            |Yes            |Yes            |Yes            |Yes            |Yes            |Yes DSI        |
|SD/MMC         |microSD        |microSD        |microSD        |microSD        |microSD        |microSD        |microSD        |microSD        |SD SDHC SDXC (2TB) |
|Serial         |               |RX/TX UART     | -             | -             | -             | -             | -             | -             |Exp Conn(Lvl Shftr)|
|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|
|Wi-Fi          |802.11 b/g/n/ac|802.11 b/g/n/ac|Yes 802.11n    |Yes 802.11n    |Yes 802.11n    |No             |No             |No             |No             |
|Bluetooth®     |BT4.2/BLE      |BT4.2/BLE      |BT4.1          |BT4.1          |BT4.1 LE       |No             |No             |No             |No             |
|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|
|Height         |2.55in(65mm)   |3.37in(85.6mm) |1.18in(30mm)   |1.18in(30mm)   |3.37in(85.6mm) |1.18in(30mm)   |3.37in(85.6mm) |2.55in(65mm)   |2.12in(53.98mm)|
|Width          |2.20in(56mm)   |2.22in(56.5mm) |2.55in(65mm)   |2.55in(65mm)   |2.22in(56.5mm) |2.55in(65mm)   |2.22in(56.5mm) |2.22in(56.5mm) |3.37in(85.6mm) |
|Depth          |0.433in(11mm)  |0.669in(17mm)  |0.512in(13mm)  |0.197in(5mm)   |0.669in(17mm)  |0.197in(5mm)   |0.669in(17mm)  |0.394in(10mm)  |0.669in(17mm)  |
|Weight         |1.02oz(29 g)   |1.58oz(45 g)   |0.42328oz(12 g)|0.31746oz(9 g) |1.58oz(45 g)   |0.31746oz(9 g) |1.58oz(45 g)   |0.81130oz(23 g)|1.58oz(45 g)   |
|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|---------------|
|Power ratings  |               |1.13 A @5V     |180 mA         |180 mA         |1.34 A @5V     |160 mA         |800 mA         |200 mA         |700 mA @5V     |
|Power sources  |microUSB/GPIO  |microUSB/GPIO  |microUSB/GPIO  |microUSB/GPIO  |microUSB/GPIO  |microUSB/GPIO  |microUSB/GPIO  |microUSB/GPIO  |microUSB/GPIO  |
|POE            |No             |with PoE Hat   |No             |No             |No             |No             |No             |No             |No             |

http://socialcompare.com/en/comparison/raspberrypi-models-comparison