#!/bin/sh
# Installation:
#     sudo sh shell_wiringPi.sh
# Speed: 40Hz
gpio mode 7 out              #Set GPIO7 output
CYCLE=100000
START=$(date +%s%3N)         #mSec
for value in {$CYCLE..0..1}
do
        gpio write 7 1
        gpio write 7 0
done
END=$(date +%s%3N)           #mSec
total=$(($END-$START))       #Total Time mSec
Freq=$(($CYCLE/$total))      #Output Frequency
echo "Freq:$Freq kHz Time:$total mSec"

