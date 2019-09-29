#include <stdbool.h>
#include <stdint.h>

// The launchpad peripherals are on port F on the following pins:
// 0 - Left button
// 1 - Red LED
// 2 - Blue LED
// 3 - Green LED
// 4 - Right button

// Initializes the LED and button pins on the launchpad
void launchpad_gpio_init(void);

#define RED_LED 2
#define BLUE_LED 4
#define GREEN_LED 8

void led_toggle(uint8_t led);

void led_write(uint8_t led, bool value);
