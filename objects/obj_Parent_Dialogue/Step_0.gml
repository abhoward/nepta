
depth = -y; // changing depth

if(place_meeting(x, y, obj_Player)) {
	if(keyboard_check_pressed(vk_space)) {
		if(myTextBox == noone) {
			myTextBox = instance_create_layer(x, y, "Text", obj_TextBox);
			myTextBox.text = myText;
			myTextBox.creator = self;
			myTextBox.name = myName;
			myTextBox.name_color = myNameColor;
		}
	}
} else {
	if(myTextBox != noone)	{
		instance_destroy(myTextBox);
		myTextBox = noone;
	}
}