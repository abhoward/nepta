/// How to move using WASD

move_left = keyboard_check(ord("A"))
move_right = keyboard_check(ord("D"))
move_up = keyboard_check(ord("W"))
move_down = keyboard_check(ord("S"))

// Get the axis
xaxis = move_right - move_left;
yaxis = move_down - move_up;

// Check for gamepad input
if(gamepad_is_connected(0))
{
	gamepad_set_axis_deadzone(0, 0.35);
	xaxis = gamepad_axis_value(0, gp_axislh);
	yaxis = gamepad_axis_value(0, gp_axislv);
}