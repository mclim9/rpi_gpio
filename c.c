// Installation
//    gcc -O3 strobe.c -o strobe
//    g++ -o c_gpio c.c
// Speed:
//    14 MHz
//    22 MHz gcc -O3 strobe.c -o strobe
//
// Set GPIO pin 4 to output


#define INP_GPIO(g) *(gpio+((g)/10)) &= ~(7<<(((g)%10)*3))
#define OUT_GPIO(g) *(gpio+((g)/10)) |=  (1<<(((g)%10)*3))

INP_GPIO(4); // must use INP_GPIO before we can use OUT_GPIO
OUT_GPIO(4);

while(1) {
  GPIO_SET = 1<<4;
  GPIO_CLR = 1<<4;
}
