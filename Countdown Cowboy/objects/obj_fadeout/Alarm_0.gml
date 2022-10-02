if alpha = 1
{
	if global.gameover = false
	{
		
		if room != global.nextroom
		{
			room = global.nextroom
		}else
		{
			room_restart()
		}
	}else
	{
		//game_restart()
		instance_destroy(obj_control)
		room = Menu
	}
}
if alpha < 1
{
	alpha += 0.05
	alarm[0] = 1
}
