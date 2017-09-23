/// scr_move_state

scr_get_input();

// Get direction
var dir = point_direction(0, 0, xaxis, yaxis);

// Get length
if(xaxis == 0 && yaxis == 0)
{
	len = 0;
}
else 
{
	len = walk_speed;
}

// Get h_Speed and v_speed
h_speed = lengthdir_x(len, dir);
v_speed = lengthdir_y(len, dir);

// Move character
phy_position_x += h_speed;
phy_position_y += v_speed;

// Animate
image_speed = walk_speed / 2;

if(len == 0)
{
image_index = 0;
}

if (v_speed > 0) // Vertical animations
{
	sprite_index = spr_Player_Walk_Down;
} else if (v_speed < 0)
{
	sprite_index = spr_Player_Walk_Up;
}

if (h_speed > 0) // Horizontal animations
{
	sprite_index = spr_Player_Walk_Right;
} else if (h_speed < 0)
{
	sprite_index = spr_Player_Walk_Left;
}

//if(move_down) {
//	phy_position_y += walk_speed;
//	image_speed = walk_speed / 3;
//	sprite_index = spr_Player_Walk_Down;
//}

//if(move_up) {
//	phy_position_y -= walk_speed;
//	image_speed = walk_speed / 3;
//	sprite_index = spr_Player_Walk_Up;
//}

//if(move_left) {
//	phy_position_x -= walk_speed;
//	image_speed = walk_speed / 3;
//	sprite_index = spr_Player_Walk_Left;
//}

//if(move_right) {
//	phy_position_x += walk_speed;
//	image_speed = walk_speed / 3;
//	sprite_index = spr_Player_Walk_Right;
//}

//if(keyboard_check(vk_nokey)) {
//	image_index = 0;
//	image_speed = 0;
//}