// Installation:
//      Download: http://wiringpi.com/
//      cd /tmp
//      wget https://unicorn.drogon.net/wiringpi-2.46-1.deb
//      sudo dpkg -i wiringpi-2.46-1.deb
//
// gcc -o c_wiringpi c_wiringpi.c -lwiringPi
// ./c_wiringpi
//
#include <wiringPi.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main() {
  if (wiringPiSetup () == -1)
    exit (1) ;

  pinMode(7, OUTPUT);

  while(1) {
    digitalWrite(7, 0);
    digitalWrite(7, 1);
  }

  return 0 ;
}
