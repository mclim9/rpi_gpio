# WiringPi
#   https://github.com/WiringPi
#   https://github.com/WiringPi/WiringPi-Python
# Speed: 28kHz

import wiringpi2

io = wiringpi2.GPIO(wiringpi2.GPIO.WPI_MODE_PINS)
io.pinMode(7,io.OUTPUT)

for x in range(100000):
    io.digitalWrite(7,io.HIGH)
    io.digitalWrite(7,io.LOW)