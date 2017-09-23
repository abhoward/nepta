// @description Dialogue with Mario

if (keyboard_check_pressed(vk_space))
{
    if (place_meeting(x, y, obj_NPC)) 
	{
		active = true;
        convo_Jane_Hebby_1();
    }
}