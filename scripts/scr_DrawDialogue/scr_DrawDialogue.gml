if(active)
{
	draw_set_font(fnt_Dialogue);
	draw_set_color(c_white);
	draw_rectangle(xOrigin, yOrigin, xOrigin + width, yOrigin + height, false);

	draw_set_color(c_black);
	draw_rectangle(innerBox_xOrigin, innerBox_yOrigin, innerBox_xOrigin + innerBoxWidth, innerBox_yOrigin + innerBoxHeight, false);	
	
	draw_set_color(c_white);
	draw_text(text_xOrigin, text_yOrigin, stringToDisplay);
	draw_sprite_ext(spriteToDisplay, -1, avatar_xOrigin, avatar_yOrigin, avatarScale, avatarScale, 0, c_white, 1);
}

