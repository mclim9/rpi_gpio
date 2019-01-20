Benchmarking Raspberry Pi
=============================================

http://codeandlife.com/2012/07/03/benchmarking-raspberry-pi-gpio-speed/

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
