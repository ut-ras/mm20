#include <launchpad.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <tivaware/adc.h>
#include <tivaware/gpio.h>
#include <tivaware/hw_ints.h>
#include <tivaware/hw_memmap.h>
#include <tivaware/rom.h>
#include <tivaware/sysctl.h>
#include <tivaware/timer.h>

extern void disable_interrupts(void);
extern void enable_interrupts(void);

volatile uint32_t delay_timer;

void systick_handler(void) { --delay_timer; }

void wait_ms(uint32_t t) {
  delay_timer = t;
  ROM_SysTickPeriodSet(80000 - 1);
  ROM_SysTickIntEnable();
  while (delay_timer != 0) {
  }
  ROM_SysTickIntDisable();
}

void blink_success(void) {
  led_write(GREEN_LED, true);
  wait_ms(250);
  led_write(GREEN_LED, false);
}

void timer0_init() {
  ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_TIMER0);
  ROM_TimerConfigure(TIMER0_BASE, TIMER_CFG_PERIODIC);
  ROM_TimerLoadSet(TIMER0_BASE, TIMER_A, 800000); // 100Hz
  ROM_IntEnable(INT_TIMER0A);
  ROM_TimerIntEnable(TIMER0_BASE, TIMER_TIMA_TIMEOUT);
  ROM_TimerEnable(TIMER0_BASE, TIMER_BOTH);
}

void timer0a_handler(void) {
  ROM_TimerIntClear(TIMER0_BASE, TIMER_A);
  ROM_GPIOPinWrite(GPIO_PORTA_BASE, GPIO_PIN_7,
                   ~ROM_GPIOPinRead(GPIO_PORTA_BASE, GPIO_PIN_7));
}

void adc0_init() {
  ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC0);  // enable ADC0
  ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOE); // enable for AIN0 on E3
  ROM_GPIOPinTypeADC(GPIO_PORTE_BASE, GPIO_PIN_3);
  ROM_ADCSequenceConfigure(ADC0_BASE, 3, ADC_TRIGGER_PROCESSOR, 0);
  ADCSequenceStepConfigure(ADC0_BASE, 3, 0,
                           ADC_CTL_CH0 | ADC_CTL_IE | ADC_CTL_END);

  ADCSequenceEnable(ADC0_BASE, 3);

  ADCIntClear(ADC0_BASE, 3);
}

static uint32_t pui32ADC0Value[1];
void adc0_read() {
  ADCProcessorTrigger(ADC0_BASE, 3);           // trigger ADC conversion
  while (!ADCIntStatus(ADC0_BASE, 3, false)) { // wait for conversion to finish
  }
  ADCIntClear(ADC0_BASE, 3);
  ADCSequenceDataGet(ADC0_BASE, 3, pui32ADC0Value); // read AIN0 E3
  printf("AIN0 = %4d\r", pui32ADC0Value[0]);
}

int main(void) {
  ROM_SysCtlClockSet(SYSCTL_SYSDIV_2_5 | SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ |
                     SYSCTL_OSC_MAIN);
  ROM_SysTickEnable();
  launchpad_init();
  ROM_GPIOPinTypeGPIOOutput(GPIO_PORTA_BASE, GPIO_PIN_7);
  timer0_init();
  adc0_init();
  while (1) {
    blink_success();
    adc0_read();
    wait_ms(1000);
  }
}
