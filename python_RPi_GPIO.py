# pip install RPi.GPIO
# https://pypi.org/project/RPi.GPIO/
# RPi3B Py2:322kHz Py3:254kHz
# RPi0  Py2- 91kHz Py3: 67kHz

import RPi.GPIO as GPIO
import datetime

num = 10000000
GPIO.setmode(GPIO.BCM)
GPIO.setup(4, GPIO.OUT)

tick = datetime.datetime.now()
for x in range(num):
    GPIO.output(4, 1)
    GPIO.output(4, 0)

tock = datetime.datetime.now() - tick
timy = tock.seconds + (tock.microseconds/1000000)
print('Time:%s  %f Hz'%(tock, num/timy))

