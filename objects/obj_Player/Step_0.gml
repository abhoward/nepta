/// Moving the player
depth = -y;
phy_fixed_rotation = true;

if((room != rm_Battle) && (room != rm_Pause) && (!instance_exists(obj_Fade))) {
	script_execute(state);
} else {
	image_index = 0;
}

// pause
if(!instance_exists(obj_Fade)) {
	if(pause_key && room != rm_Pause && room != rm_Battle) {
		scr_fadeout(rm_Pause, c_white, 0.05, x, y);
	}
	if((pause_key) && (room == rm_Pause)) {
		scr_fadeout(last_room, c_white, 0.05, x, y);
	}
}