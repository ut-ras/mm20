#include "launchpad.h"
#include "tivaware/rom.h"
#include "tivaware/sysctl.h"
#include <stdint.h>

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
    ROM_SysTickEnable();
    launchpad_gpio_init();
    led_write(RED_LED, true);
    while (1) {
        led_toggle(RED_LED);
        wait_ms(200);
        led_toggle(GREEN_LED);
        wait_ms(200);
        led_toggle(BLUE_LED);
        wait_ms(200);
    }
}
