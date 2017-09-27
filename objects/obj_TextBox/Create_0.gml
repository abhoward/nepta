/// @description Insert description here

text = "The quick brown fox jumped over the lazy dog because he's a piece of good for nothing shit.";

page = 0;

x_buffer = 10;
y_buffer = 10;

global.screen_width = display_get_width();
global.screen_height = display_get_height();
global.screen_height_box = display_get_height() / 10;
stringHeight = string_height(text);
creator = noone;
char_count = 0;
name = noone;
name_color = noone;