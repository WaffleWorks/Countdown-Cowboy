if mouse_check_button_pressed(mb_left)
{
	if position_meeting(mouse_x,mouse_y,self) and obj_crosshair.shootable = true and shoot = false and global.success = false and global.fail = false
	{
		hit = true
	}
}

if hit = true
{
	hit = false
	sprite_index = hit_sprite
	screenshake(10, 50, 0.2)//5,1
	destroy = true
	alarm[3] = 30
	audio_play_sound(snd_hit,10,false)
}
if destroy = true
{
	y += 1	
	if alpha > 0
	{
		alpha -= 0.1
	}
	if global.success = true or global.fail = true
	{
		//instance_destroy()	
	}
}

if shoot = true and global.fail = false
{
	global.fail = true
	global.counting = false
	global.hearts -= 1
	sprite_index = shoot_sprite
	image_index = 1
}

if place_meeting(x,y,obj_window2)
{
	mask_index = spr_saloonenemy
	with obj_window2
	{
		if index = 3 
		{
			if open = true and other.destroy = false or global.fail = true and other.destroy = false
			{
				other.depth = -1
			}else
			{
				if global.success = false
				{
					other.depth = 250
				}
			}
		}
	}
}
image_alpha = alpha