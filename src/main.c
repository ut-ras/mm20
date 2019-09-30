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

int main(void) {
    ROM_SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ |
                       SYSCTL_OSC_INT);
    volatile float f = 3.14159f;
    ROM_SysTickEnable();
    launchpad_init();
    while (1) {
        led_toggle(RED_LED);
        printf("cos/pow: %f/%f\n\r", cosf(f), powf(f, 3));
        wait_ms(200);
        led_toggle(GREEN_LED);
        printf("hello world\n\r");
        wait_ms(200);
        led_toggle(BLUE_LED);
        printf("%f\n\r", f += 0.01f);
        wait_ms(200);
    }
}
