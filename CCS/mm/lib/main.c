#include "launchpad.h"
#include "tivaware/gpio.h"
#include "tivaware/hw_ints.h"
#include "tivaware/hw_memmap.h"
#include "tivaware/rom.h"
#include "tivaware/sysctl.h"
#include "tivaware/timer.h"
#include "driverlib/adc.h"
#include "driverlib/debug.h"
#include "driverlib/fpu.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/sysctl.h"
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
#include "v_tm4c123gh6pm.h"

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
        Task_sleep(1000);
    }
}

void Task_WallDetector(UArg arg0, UArg arg1) {
    //  cycle through all 4 sensors

    //  init
    SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC0);

    /*
     *  Test circuit Pinout
     *  Emitter On/Off Gate: PD0
     *  Receiver Voltage Level: PD1
     */
    while(1)
    {
    //  1. turn on emitter
    GPIO_PORTD_DATA_R = GPIO_PORTD_DATA_R ^ 0x0001;
    //  2. wait for emitter to fully turn on
    __nop();
    __nop();
    //  3. read receiver voltage using ADC

    Task_sleep(1000);
    uint32_t result;
    ADC0_PSSI_R = 0x0008;
    while((ADC0_RIS_R&0x08)==0){};
    result = ADC0_SSFIFO3_R&0xFFF;
    ADC0_ISC_R = 0x0008;
    System_printf("%d\n",result);


//    uint32_t adcOut=0;
//
//    ADCSequenceConfigure(ADC0_BASE, 0, ADC_TRIGGER_PROCESSOR, 0);
//    ADCSequenceStepConfigure(ADC0_BASE, 0, 0, ADC_CTL_IE | ADC_CTL_END
//                            | ADC_CTL_CH7);
//    ADCSequenceEnable(ADC0_BASE, 0);
//    ADCIntClear(ADC0_BASE, 0);
//
//    ADCProcessorTrigger(ADC0_BASE, 0);
//    while(!ADCIntStatus(ADC0_BASE, 0, false)) {}
//    ADCIntClear(ADC0_BASE, 0);
//    ADCSequenceDataGet(ADC0_BASE, 0, &adcOut0);

    //  4. turn off emitter
    GPIO_PORTD_DATA_R = GPIO_PORTD_DATA_R & 0xFFFE;
    }
}

Task_Struct tsk0Struct;
Task_Struct tsk1Struct;
UInt8 tsk0Stack[TASKSTACKSIZE];
UInt8 tsk1Stack[TASKSTACKSIZE];

int main(void) {
    ROM_SysCtlClockSet(SYSCTL_SYSDIV_2_5 | SYSCTL_USE_PLL | SYSCTL_XTAL_16MHZ |
                       SYSCTL_OSC_MAIN);
    ROM_SysTickEnable();
    launchpad_init();

    Board_initGeneral();
    Board_initPWM();
    Board_initGPIO();

    timer0_init();

    //  Task Initialization
    Task_Params tskParams;
    Task_Params_init(&tskParams);
    tskParams.stackSize = TASKSTACKSIZE;
    tskParams.stack = &tsk0Stack;
    tskParams.arg0 = 0;

//    Task_construct(&tsk0Struct, (Task_FuncPtr)LEDtask, &tskParams, NULL);
    Task_construct(&tsk1Struct, (Task_FuncPtr)Task_WallDetector, &tskParams, NULL);

    BIOS_start();   //  This must be the very last line!
}
