#!/bin/sh
# Shell script
#     sudo sh shell.sh
#
# Speed 2.9kHz

echo "4" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio4/direction

for value in {100000..0..1}
do
        echo 1 > /sys/class/gpio/gpio4/value
        echo 0 > /sys/class/gpio/gpio4/value
done
