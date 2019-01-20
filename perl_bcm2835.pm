# Installation:
#     cpan
#     download *.tar.gz   https://metacpan.org/search?q=BCM2835
#     download *.tar.gz   https://metacpan.org/search?q=BCM2835
#     perl Makefile.PL
#     make
#     make install
#
# Speed: 48 kHz
#
use Device::BCM2835;
use strict;

Device::BCM2835::init() || die "Could not init library";

# Set RPi pin P1_07 (GPIO 4) to be an output
Device::BCM2835::gpio_fsel(&Device::BCM2835::RPI_GPIO_P1_07, 
                            &Device::BCM2835::BCM2835_GPIO_FSEL_OUTP);

while (1) { # Strobe
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_07, 1);
    Device::BCM2835::gpio_write(&Device::BCM2835::RPI_GPIO_P1_07, 0);
}

