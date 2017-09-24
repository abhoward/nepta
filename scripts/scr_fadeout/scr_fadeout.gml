/// @description scr_fadeout(room, fade_color, fade_speed, x, y)
/// @arg room
/// @arg fade_color
/// @arg fade_speed
/// @arg x
/// @arg y

var fade = instance_create_depth(x, y, 0, obj_Fade);

fade.target = argument0;
fade.image_alpha = 0;
fade.fade_color = argument1;
fade.fade_speed = argument2;
fade.xx = argument3;
fade.yy = argument4;