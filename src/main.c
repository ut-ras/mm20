#include "launchpad.h"
#include "tivaware/hw_memmap.h"
#include "tivaware/rom.h"
#include "tivaware/sysctl.h"
#include <math.h>
#include <stdint.h>
#include <stdio.h>

extern void disable_interrupts(void);
extern void enable_interrupts(void);

volatile uint32_t delay_timer;

void systick_handler(void) {
    --delay_timer;
}

void wait_ms(uint32_t t) {
    delay_timer = t;
    ROM_SysTickPeriodSet(80000 - 1);
    ROM_SysTickIntEnable();
    while (delay_timer != 0) {}
    ROM_SysTickIntDisable();
}

void blink_success(void) {
    led_write(GREEN_LED, true);
    wait_ms(250);
    led_write(GREEN_LED, false);
}

int main(void) {
    ROM_SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ |
                       SYSCTL_OSC_INT);
    int i;
    char s[80];
    float f;
    ROM_SysTickEnable();
    launchpad_init();
    while (1) {
        blink_success();

        printf("Input an int:\t");
        scanf("%d", &i);
        printf("Int entered:\t%d\n\n\r", i);

        blink_success();

        printf("Input a string: ");
        scanf("%s", s);
        printf("String entered: %s\n\n\r", s);

        blink_success();

        printf("Input a float:\t");
        scanf("%f", &f);
        printf("String entered:\t%f\n\r", f);
    }
}
