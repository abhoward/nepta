/// @description Insert description here
if(keyboard_check_pressed(vk_space)) {
	if((page+1) < array_length_1d(text)) {
		page += 1;
		char_count = 0;
	} else {
		instance_destroy();
		creator.alarm[1] = 1;
	}
}
