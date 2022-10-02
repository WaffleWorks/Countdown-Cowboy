//clicked
if room = Menu
{
	if (position_meeting(mouse_x, mouse_y, id)) and mouse_check_button_pressed(mb_left) //mouse clicked
	{
		clicked = true
	}

	//clicked
	if clicked = true and mouse_check_button_released(mb_left) //mouse released
	{
		clicked = false
		do_action = true
	}

	//change image index
	if (position_meeting(mouse_x, mouse_y, id)) and !clicked //mouse hover
	{
		image_index = hover_image_index
	}else if (position_meeting(mouse_x, mouse_y, id)) //mouse
	{
		image_index = clicked_image_index
	}else
	{
		image_index = default_image_index 
	}

	//do action
	if do_action = true
	{
		do_action = false
		global.fullscreen = not global.fullscreen
		ini_open("save.ini");
		ini_write_real("save", "fullscreen", global.fullscreen)
		ini_close();
		window_set_fullscreen(global.fullscreen)
		audio_play_sound(snd_gunshot,10,false)
		audio_play_sound(snd_hit,10,false)
	}
}