x = mouse_x
y = mouse_y



if room = Juggle
{
	if mouse_check_button_pressed(mb_left) and global.success = false and global.fail = false and global.start = true and shootable = true
	{
		shootable = false
		alarm[0] = 15
		screenshake(5, 15, 0.2)//5,1
		audio_play_sound(snd_gunshot,10,false)
		light = false
	}
	if !place_meeting(x,y,obj_bottle)
	{
		light = true
	}
	
	if shootable = true and place_meeting(x,y,obj_bottle) and global.start = true and global.fail = false and global.success = false and light = true
	{
		sprite_index = spr_crosshairlight
	}else
	{
		sprite_index = spr_crosshair
	}
}else if room = Saloon
{
	if mouse_check_button_pressed(mb_left) and shootable = true and global.success = false and global.fail = false and global.start = true
	{
		ammo -= 1
		screenshake(5, 15, 0.2)//5,1
		audio_play_sound(snd_gunshot,10,false)
	}
	if shootable = true and position_meeting(mouse_x,mouse_y,obj_saloonenemy) and global.start = true and global.fail = false and global.success = false
	{
		with instance_position(mouse_x,mouse_y,obj_saloonenemy)
		{
			if destroy = false
			{
				other.sprite_index = spr_crosshairlight
			}else
			{
				other.sprite_index = spr_crosshair
			}
		}
	}else
	{
		sprite_index = spr_crosshair
	}
	if ammo <= 0
	{
		shootable = false
	}
}