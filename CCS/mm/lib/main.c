#include "launchpad.h"
#include "tivaware/gpio.h"
#include "tivaware/hw_ints.h"
#include "tivaware/hw_memmap.h"
#include "tivaware/rom.h"
#include "tivaware/sysctl.h"
#include "tivaware/timer.h"
#include <math.h>
#include <stdint.h>
#include <stdio.h>
/* XDCtools Header files */
#include <xdc/std.h>
#include <xdc/runtime/System.h>

/* BIOS Header files */
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>

/* TI-RTOS Header files */
#include <ti/drivers/GPIO.h>
#include <ti/drivers/PWM.h>

/* Example/Board Header files */
#include "Board.h"

#define TASKSTACKSIZE   1024

extern void disable_interrupts(void);
extern void enable_interrupts(void);

volatile uint32_t delay_timer;

void systick_handler(void) {
    --delay_timer;
}

void wait_ms(uint32_t t) {

}

void blink_success(void) {
    led_write(GREEN_LED, true);
    Task_sleep(250);
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

void LEDtask(UArg arg0, UArg arg1)
{
    while (1) {
            blink_success();
            printf("left: %d\t\tright:%d\n\r", left_switch(), right_switch());
            Task_sleep(1000);;
        }
}

Task_Struct tsk0Struct;
UInt8 tsk0Stack[TASKSTACKSIZE];
Task_Handle task;

int main(void) {
    ROM_SysCtlClockSet(SYSCTL_SYSDIV_2_5 | SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ |
                       SYSCTL_OSC_MAIN);
    ROM_SysTickEnable();
    launchpad_init();
    ROM_GPIOPinTypeGPIOOutput(GPIO_PORTA_BASE, GPIO_PIN_7);
    timer0_init();
    Task_Params tskParams;
    Task_Params_init(&tskParams);
    tskParams.stackSize = TASKSTACKSIZE;
    tskParams.stack = &tsk0Stack;
    tskParams.arg0 = 50;
    Task_construct(&tsk0Struct, (Task_FuncPtr)LEDtask, &tskParams, NULL);
    BIOS_start();

}
