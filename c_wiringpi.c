// Installation:
//      Download: http://wiringpi.com/
//      cd /tmp
//      wget https://unicorn.drogon.net/wiringpi-2.46-1.deb
//      sudo dpkg -i wiringpi-2.46-1.deb
//
// gcc -Wall -o cwiring c_wiringpi.c -lwiringPi
// sudo ./cwiring
//
#include <wiringPi.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main(void)
{
   if (wiringPiSetup () == -1)
      exit (1) ;
   pinMode(7, OUTPUT);

   for (;;) 
   {
      digitalWrite(7, 0);
      digitalWrite(7, 1);
   }

   return 0 ;
}