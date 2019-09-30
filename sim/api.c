#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUFFER_SIZE 32

int get_int(char* command) {
    printf("%s\n", command);
    fflush(stdout);
    char response[BUFFER_SIZE];
    fgets(response, BUFFER_SIZE, stdin);
    int value = atoi(response);
    return value;
}

int get_bool(char* command) {
    printf("%s\n", command);
    fflush(stdout);
    char response[BUFFER_SIZE];
    fgets(response, BUFFER_SIZE, stdin);
    int value = (strcmp(response, "true\n") == 0);
    return value;
}

int get_ack(char* command) {
    printf("%s\n", command);
    fflush(stdout);
    char response[BUFFER_SIZE];
    fgets(response, BUFFER_SIZE, stdin);
    int success = (strcmp(response, "ack\n") == 0);
    return success;
}

int API_maze_width() {
    return get_int("mazeWidth");
}

int API_maze_height() {
    return get_int("mazeHeight");
}

int API_wall_front() {
    return get_bool("wallFront");
}

int API_wall_right() {
    return get_bool("wallRight");
}

int API_wall_left() {
    return get_bool("wallLeft");
}

int API_move_forward() {
    return get_ack("moveForward");
}

void API_turn_right() {
    get_ack("turnRight");
}

void API_turn_left() {
    get_ack("turnLeft");
}

void API_set_wall(int x, int y, char direction) {
    printf("setWall %d %d %c\n", x, y, direction);
    fflush(stdout);
}

void API_clear_wall(int x, int y, char direction) {
    printf("clearWall %d %d %c\n", x, y, direction);
    fflush(stdout);
}

void API_set_color(int x, int y, char color) {
    printf("setColor %d %d %c\n", x, y, color);
    fflush(stdout);
}

void API_clear_color(int x, int y) {
    printf("clearColor %d %d\n", x, y);
    fflush(stdout);
}

void API_clear_all_color() {
    printf("clearAllColor\n");
    fflush(stdout);
}

void API_set_text(int x, int y, char* text) {
    printf("setText %d %d %s\n", x, y, text);
    fflush(stdout);
}

void API_clear_text(int x, int y) {
    printf("clearText %d %d\n", x, y);
    fflush(stdout);
}

void API_clear_all_text() {
    printf("clearAllText\n");
    fflush(stdout);
}

int API_was_reset() {
    return get_bool("wasReset");
}

void API_ack_reset() {
    get_ack("ackReset");
}
