#include <stdarg.h>
#include <stdio.h>

#include "api.h"

void log_out(char* format, ...) {
    va_list args;
    va_start(args, format);
    vfprintf(stderr, format, args);
    va_end(args);
    fflush(stderr);
}

int main(int argc, char* argv[]) {
    log_out("Running...");
    API_set_color(0, 0, 'G');
    API_set_text(0, 0, "abc");
    while (1) {
        if (!API_wall_left()) {
            API_turn_left();
        }
        while (API_wall_front()) { API_turn_right(); }
        API_move_forward();
    }
}
