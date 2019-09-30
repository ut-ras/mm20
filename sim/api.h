#pragma once

int API_maze_width();
int API_maze_height();

int API_wall_front();
int API_wall_right();
int API_wall_left();

int API_move_forward(); // Returns 0 if crash, else returns 1
void API_turn_right();
void API_turn_left();

void API_set_wall(int x, int y, char direction);
void API_clear_wall(int x, int y, char direction);

void API_set_color(int x, int y, char color);
void API_clear_color(int x, int y);
void API_clear_all_color();

void API_set_text(int x, int y, char* str);
void API_clear_text(int x, int y);
void API_clear_all_text();

int API_was_reset();
void API_ack_reset();
