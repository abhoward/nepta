if(keyboard_check(ord("S")) && place_free(x, y + collision_speed)) {
	y += walk_speed;
	image_speed = walk_speed / 3;
	sprite_index = spr_Player_Walk_Down;
}

if(keyboard_check(ord("W")) && place_free(x, y - collision_speed)) {
	y -= walk_speed;
	image_speed = walk_speed / 3;
	sprite_index = spr_Player_Walk_Up;
}

if(keyboard_check(ord("A")) && place_free(x - collision_speed, y)) {
	x -= walk_speed;
	image_speed = walk_speed / 3;
	sprite_index = spr_Player_Walk_Left;
}

if(keyboard_check(ord("D")) && place_free(x + collision_speed, y)) {
	x += walk_speed;
	image_speed = walk_speed / 3;
	sprite_index = spr_Player_Walk_Right;
}

if(keyboard_check(vk_nokey)) {
	image_index = 0;
	image_speed = 0;
}