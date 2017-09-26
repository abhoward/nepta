/// @description Drawing to screen

draw_text(5, 5, string(box_width));

// draw textbox
draw_rectangle(-2, -2, box_width + 2, box_height + 2, false);
draw_sprite_stretched(spr_TextBox, 0, 2, 2, box_width - 100, box_height - 2);

// draw text
draw_set_font(fnt_Text);

if(char_count < string_length(text[page])) {
	char_count += 0.5;
}	
textPart = string_copy(text[page], 1, char_count);

// Draw the name
draw_set_color(name_color)
//draw_set_halign(fa_center);
draw_text(10, y_buffer, name);
//draw_set_halign(fa_left);

// Draw part of the text
draw_set_color(c_white);
draw_text_ext(x_buffer, stringHeight + y_buffer, textPart,  stringHeight, box_width - (2*x_buffer));