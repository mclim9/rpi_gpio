#!/bin/sh
# Shell script
#     sudo sh shell.sh
#
# Speed 2.9kHz

echo "4" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio4/direction

repi=100000
start=$(date +%s%3N)
for value in {$repi..0..1}
do
        echo 1 > /sys/class/gpio/gpio4/value
        echo 0 > /sys/class/gpio/gpio4/value
done

end=$(date +%s%3N)

runtime=$(($end-$start))
freq=$(($repi/$runtime))
echo "Freq:$freq kHz Time:$runtime mSec"
