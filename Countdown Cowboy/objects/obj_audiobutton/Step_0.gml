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
		global.mute = not global.mute
		ini_open("save.ini");
		ini_write_real("save", "mute", global.mute)
		ini_close();
		//audio_play_sound(snd_blip,10,false)
		if global.mute = false
		{
			//audio_play_sound(snd_gunshot,10,false)
			//audio_play_sound(snd_hit,10,false)
		}
	}
}

if global.mute = true
{
	audio_sound_gain(snd_alarm, 0, 0);
	audio_sound_gain(snd_blip, 0, 0);
	audio_sound_gain(snd_blip2, 0, 0);
	audio_sound_gain(snd_bounce, 0, 0);
	audio_sound_gain(snd_dooropen, 0, 0);
	audio_sound_gain(snd_fail, 0, 0);
	audio_sound_gain(snd_gameover, 0, 0);
	audio_sound_gain(snd_glassshatter, 0, 0);
	audio_sound_gain(snd_gunshot, 0, 0);
	audio_sound_gain(snd_gunshot2, 0, 0);
	audio_sound_gain(snd_heartbeat, 0, 0);
	audio_sound_gain(snd_hit, 0, 0);
	audio_sound_gain(snd_hitquieter, 0, 0);
	audio_sound_gain(snd_jump, 0, 0);
	audio_sound_gain(snd_music, 0, 0);
	audio_sound_gain(snd_start, 0, 0);
}else
{
	audio_sound_gain(snd_alarm, 1, 0);
	audio_sound_gain(snd_blip, 1, 0);
	audio_sound_gain(snd_blip2, 1, 0);
	audio_sound_gain(snd_bounce, 1, 0);
	audio_sound_gain(snd_dooropen, 1, 0);
	audio_sound_gain(snd_fail, 1, 0);
	audio_sound_gain(snd_gameover, 1, 0);
	audio_sound_gain(snd_glassshatter, 1, 0);
	audio_sound_gain(snd_gunshot, 1, 0);
	audio_sound_gain(snd_gunshot2, 1, 0);
	audio_sound_gain(snd_heartbeat, 1, 0);
	audio_sound_gain(snd_hit, 1, 0);
	audio_sound_gain(snd_hitquieter, 1, 0);
	audio_sound_gain(snd_jump, 1, 0);
	audio_sound_gain(snd_music, 1, 0);
	audio_sound_gain(snd_start, 1, 0);
}