#!/bin/sh
#Shell script
#Speed 2.9kHz

echo "4" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio4/direction

while true
do
        echo 1 > /sys/class/gpio/gpio4/value
        echo 0 > /sys/class/gpio/gpio4/value
done
