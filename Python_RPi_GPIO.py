# pip install RPi.GPIO
# https://pypi.org/project/RPi.GPIO/
# Speed 70kHz

import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)

GPIO.setup(4, GPIO.OUT)

while True:
    GPIO.output(4, True)
    GPIO.output(4, False)