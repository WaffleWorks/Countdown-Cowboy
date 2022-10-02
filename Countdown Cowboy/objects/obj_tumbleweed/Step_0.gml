if global.start = true
{
	if delay < 1
	{
		delay += 0.02
	}
	hsp = dir*move_speed
	vsp += grav
	if place_meeting(x+dir,y,obj_sideground) and side_collision = true
	{
		dir*=-1
		side_collision = false
		alarm[0] = 30
		if global.bounce_sound = false and !audio_is_playing(snd_gameover) and obj_tumbleweedplayer.dead = false
		{
			audio_play_sound(snd_bounce,5,false)
			global.bounce_sound = true
			alarm[1] = 4
		}
	}
	if place_meeting(x,y+1,obj_ground)
	{
		vsp = bounce_height
		if global.bounce_sound = false and global.gameover = false and !audio_is_playing(snd_gameover) and obj_tumbleweedplayer.dead = false
		{
			audio_play_sound(snd_bounce,5,false)
			global.bounce_sound = true
			alarm[1] = 4
		}
	}
	if obj_tumbleweedplayer.dead = true
	{
		//hsp = 0
		//vsp = 0
	}
	x += hsp*delay
	y += vsp*delay
	
	angle_speed = hsp*-3
	angle += angle_speed*delay
}

