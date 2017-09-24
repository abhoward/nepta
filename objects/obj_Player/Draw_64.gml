/// @desc Draw GUI
if(room != rm_Battle && room != rm_Pause) {
	// draw basic variables
	draw_set_font(fnt_Small);
	draw_text(16, 8, "Health: " + string(global.p_health) + "/" + string(global.p_maxhealth));
	draw_text(16, 32, "Level: " + string(global.p_level));
	
	// draw healthbar
	draw_rectangle(164, 12, 164 + (global.p_maxhealth*4), 28, false);
	var healthbar = 100*global.p_maxhealth;
	draw_healthbar(164, 12, 164 + (global.p_health*4), 28, global.p_health*healthbar, c_black, c_red, c_green, 0, 1, 1);
} else if(room = rm_Pause) {
	// draw stats box
	draw_rectangle(room_width*0.4, room_height*0.5, room_width*1.1, room_height*1.65, false);
	draw_set_color(c_black);
	draw_rectangle(room_width*0.4, room_height*0.5, room_width*1.1, room_height*1.65, true);
	
	// draw player
	draw_set_color(c_white);
	draw_sprite_ext(spr_Player_Walk_Down, 0, room_width*1.35, room_height, 12, 12, 0, c_white, 1);
	
	// draw stats
	draw_set_font(fnt_Small);
	draw_set_color(c_black);
	draw_text(room_width*0.45, room_height*0.55, "Level: " + string(global.p_level));
	draw_text(room_width*0.45, room_height*0.70, "Health: " + string(global.p_health) + "/" + string(global.p_maxhealth));
	draw_text(room_width*0.45, room_height*0.85, "Attack: " + string(global.p_attack));
	draw_text(room_width*0.45, room_height, "Speed: " + string(global.p_speed));
	draw_text(room_width*0.45, room_height*1.15, "Experience: " + string(global.p_exp) + "/" + string(global.p_maxexp));
	draw_set_color(c_white);
}