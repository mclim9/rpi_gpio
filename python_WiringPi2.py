# WiringPi
#   https://github.com/WiringPi
#   https://github.com/WiringPi/WiringPi-Python
# RPi3B: Py2-143kHz Py3-105kHz
# RPi0 : Py2        Py3- 20kHz

import wiringpi2
import datetime

nummy = 1000000
io = wiringpi2.GPIO(wiringpi2.GPIO.WPI_MODE_PINS)
io.pinMode(7,io.OUTPUT)

tick = datetime.datetime.now()
for x in range(nummy):
    io.digitalWrite(7,io.HIGH)
    io.digitalWrite(7,io.LOW)
tock = datetime.datetime.now() - tick
timy = tock.seconds + tock.microseconds/1000000
print('Time:%s  %f Hz'%(tock,nummy/timy))
