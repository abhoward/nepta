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

// Check for battle encounter
if(len != 0) {
	var rng = irandom(steps);
	if(rng == steps && steps <= 850) {
		scr_fadeout(rm_Battle, c_white, 0.025, x, y);
		steps = 1000;
	} else {
		steps -= 1;
	}
}

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