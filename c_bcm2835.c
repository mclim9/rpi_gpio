// Installation:
//      Download: www.airspayce.com/mikem/bcm2835/index.html
//      configure
//      make
//      make install
//      gcc -lbcm2835 C_BCM2835.c
// Speed:
//      5.4 MHz

#include <bcm2835.h>

#define PIN RPI_GPIO_P1_07 // GPIO 4

int main(int argc, char *argv[]) {
    if(!bcm2835_init())
        return 1;

    // Set the pin to be an output
    bcm2835_gpio_fsel(PIN, BCM2835_GPIO_FSEL_OUTP);

    while(1) { // Blink
        bcm2835_gpio_write(PIN, HIGH);
        //delay(500);
        bcm2835_gpio_write(PIN, LOW);
        //delay(500);
    }

    return 0;
}