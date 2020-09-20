#include "motors.h"
#include "tivaware/gpio.h"
#include "tivaware/hw_memmap.h"
#include "tivaware/pin_map.h"
#include "tivaware/qei.h"
#include "tivaware/rom.h"
#include "tivaware/sysctl.h"

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

void set_left(float speed) {
    // TODO
}

void set_right(float speed) {
    // TODO
}
