#!/bin/sh
# Installation:
#     sudo sh shell_wiringPi.sh
#
# Speed: 40Hz
gpio mode 7 out

for value in {100000..0..1}
do
        gpio write 7 1
        gpio write 7 0
done
