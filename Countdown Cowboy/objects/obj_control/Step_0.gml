if keyboard_check_pressed(ord("R")) and global.fail = false and global.success = false and global.counting = true
{
	if !instance_exists(obj_fadeout) and room != Menu
	{
		//instance_create_depth(x,y,depth,obj_fadeout)
		//global.nextroom = room
	}
}

if room = Menu
{
	//room = global.nextroom	
}

if global.success = true and play_alarm = false
{
	play_alarm = true
	audio_play_sound(snd_alarm,10,false)
}

if global.fail = true and play_fail = false
{
	play_fail = true
	audio_play_sound(snd_fail,10,false)
}