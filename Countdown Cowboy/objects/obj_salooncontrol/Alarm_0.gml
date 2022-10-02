if window_num = 0
{
	window_num = irandom_range(1,5)
}else if window_num = 1
{
	window_num = choose(2,3,4,5)
}else if window_num = 2
{
	window_num = choose(1,3,4,5)
}else if window_num = 3
{
	window_num = choose(1,2,4,5)
}else if window_num = 4
{
	window_num = choose(1,2,3,5)
}else if window_num = 5
{
	window_num = choose(1,2,3,4)
}

with obj_window
{
	if index = other.window_num and open = false and global.fail = false and global.success = false
	{
		open = true
		audio_play_sound(snd_dooropen,0,false)
		alarm[0] = clamp(other.min_spawn_time-10,50,100)
		
		with instance_create_depth(x,y+4,250,obj_saloonenemy)
		{
			//image_xscale = 1.5
			//image_yscale = 1.5
		}
	}
}
alarm[0] = irandom_range(min_spawn_time,max_spawn_time)