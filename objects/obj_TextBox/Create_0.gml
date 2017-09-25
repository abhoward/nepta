/// @description Insert description here

text = "The quick brown fox jumped over the lazy dog because he's a piece of good for nothing shit.";

page = 0;

x_buffer = 10;
y_buffer = 10;

box_width = sprite_get_width(spr_TextBox) - (2*x_buffer);
stringHeight = string(text);
creator = noone;
char_count = 0;
name = noone;