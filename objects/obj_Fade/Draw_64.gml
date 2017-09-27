/// @desc Draw fadeout

draw_set_color(fade_color);
draw_set_alpha(image_alpha);

if(room != target)
{
	image_alpha += fade_speed;
	if(image_alpha == 1) {
		obj_Player.x = xx;
		obj_Player.y = yy;
		room_goto(target);
	}
} else {
	image_alpha -= fade_speed;
	if(image_alpha == 0) {
		instance_destroy();
	}
}

draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);