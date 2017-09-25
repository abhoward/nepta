/// @description Insert description here

// draw textbox
draw_sprite(spr_TextBox, 0, x, y);



// draw text
draw_set_font(fnt_Text);

if(char_count < string_length(text[page])) {
	char_count += 0.5;
}	
textPart = string_copy(text[page], 1, char_count);

// Draw the name
draw_text(x, y, name);

// Draw part of the text
draw_text_ext(x + x_buffer, y + stringHeight + y_buffer, textPart,  stringHeight, box_width);