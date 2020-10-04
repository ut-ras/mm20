#include "motors.h"
#include "tivaware/gpio.h"
#include "tivaware/hw_memmap.h"
#include "tivaware/pin_map.h"
#include "tivaware/qei.h"
#include "tivaware/rom.h"
#include "tivaware/sysctl.h"
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

// TODO: init pwm for drivers
void init_motors() {
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_QEI0);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_QEI1);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOC);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
    ROM_GPIOPinConfigure(GPIO_PD6_PHA0);
    ROM_GPIOPinConfigure(GPIO_PD7_PHB0);
    ROM_GPIOPinConfigure(GPIO_PC5_PHA1);
    ROM_GPIOPinConfigure(GPIO_PC6_PHB1);
    ROM_GPIOPinTypeQEI(GPIO_PORTD_BASE, GPIO_PIN_6 | GPIO_PIN_7);
    ROM_GPIOPinTypeQEI(GPIO_PORTC_BASE, GPIO_PIN_5 | GPIO_PIN_6);
    ROM_QEIConfigure(QEI0_BASE, QEI_CONFIG_CAPTURE_A_B | QEI_CONFIG_SWAP,
                     UINT32_MAX);
    ROM_QEIConfigure(QEI1_BASE, QEI_CONFIG_CAPTURE_A_B | QEI_CONFIG_NO_SWAP,
                     UINT32_MAX);
    ROM_QEIVelocityConfigure(QEI0_BASE, QEI_VELDIV_1, VELOCITY_PERIOD);
    ROM_QEIVelocityConfigure(QEI1_BASE, QEI_VELDIV_1, VELOCITY_PERIOD);
    ROM_QEIEnable(QEI0_BASE);
    ROM_QEIEnable(QEI1_BASE);
    ROM_QEIVelocityEnable(QEI0_BASE);
    ROM_QEIVelocityEnable(QEI1_BASE);
}

int32_t left_pos(void) {
    return ROM_QEIPositionGet(QEI0_BASE);
}

int32_t right_pos(void) {
    return ROM_QEIPositionGet(QEI1_BASE);
}

uint32_t left_speed(void) {
    return ROM_QEIVelocityGet(QEI0_BASE);
}
uint32_t right_speed(void) {
    return ROM_QEIVelocityGet(QEI1_BASE);
}

void reset_enc(void) {
    ROM_QEIPositionSet(QEI0_BASE, 0);
    ROM_QEIPositionSet(QEI1_BASE, 0);
}

Void pwmMotorFxn(UArg arg0, UArg arg1)
{
    PWM_Handle pwm1;
    PWM_Handle pwm2 = NULL;
    PWM_Params params;
    uint16_t   pwmPeriod = 3000;      // Period and duty in microseconds
    uint16_t   duty = 0;
    uint16_t   dutyInc = 100;

    PWM_Params_init(&params);
    params.period = pwmPeriod;
    pwm1 = PWM_open(Board_PWM0, &params);
    if (pwm1 == NULL) {
        System_abort("Board_PWM0 did not open");
    }

    if (Board_PWM1 != Board_PWM0) {
        params.polarity = PWM_POL_ACTIVE_LOW;
        pwm2 = PWM_open(Board_PWM1, &params);
        if (pwm2 == NULL) {
            System_abort("Board_PWM1 did not open");
        }
    }

    /* Loop forever incrementing the PWM duty */
    while (1) {
        PWM_setDuty(pwm1, duty);

        if (pwm2) {
            PWM_setDuty(pwm2, duty);
        }

        duty = (duty + dutyInc);
        if (duty == pwmPeriod || (!duty)) {
            dutyInc = - dutyInc;
        }

        Task_sleep((UInt) arg0);
    }
}


void set_left(float speed) {
    // TODO
}

void set_right(float speed) {
    // TODO
}
