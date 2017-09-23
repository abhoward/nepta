if(keyboard_check(ord("S"))) {
	y += walk_speed;
	image_speed = walk_speed / 3;
	sprite_index = spr_Player_Walk_Down;
}

if(keyboard_check(ord("W"))) {
	y -= walk_speed;
	image_speed = walk_speed / 3;
	sprite_index = spr_Player_Walk_Up;
}

if(keyboard_check(ord("A"))) {
	x -= walk_speed;
	image_speed = walk_speed / 3;
	sprite_index = spr_Player_Walk_Left;
}

if(keyboard_check(ord("D"))) {
	x += walk_speed;
	image_speed = walk_speed / 3;
	sprite_index = spr_Player_Walk_Right;
}

if(keyboard_check(vk_nokey)) {
	image_index = 0;
	image_speed = 0;
}