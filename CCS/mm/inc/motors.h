#include <stdint.h>

const int VELOCITY_PERIOD = 4000; // TODO: investigate accuracy/latency tradeoff

void init_motors(void);

void reset_enc(void);

int32_t left_pos(void);
int32_t right_pos(void);

uint32_t left_speed(void);
uint32_t right_speed(void);

void set_left(float speed);
void set_right(float speed);
