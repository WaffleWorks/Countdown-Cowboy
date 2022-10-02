if global.start = true and global.success = false and dead = false
{
	if started = false
	{
		hspeed = random_range(-2,2)
		angle_speed = hspeed*3	
		started = true
		if index = 2 or index = 4
		{
			vspeed = -1
		}else
		{
			if index = 1
			{
				vspeed = 0
			}else
			{
				vspeed = -0.5
			}
		}
	}
	
	vspeed += grav

	if mouse_check_button_pressed(mb_left)
	{
		if place_meeting(x,y,obj_crosshair)	and obj_crosshair.shootable = true
		{
			hit = true
		}
	}

	if hit = true and global.fail = false
	{
		hit = false
		vspeed = jump_speed
		hspeed = ((x - obj_crosshair.x)/4)
		angle_speed = hspeed*3
		screenshake(5, 30, 0.2)//5,1
		audio_play_sound(snd_hit,10,false)
		alarm[0] = 5
	}

	var onepixel = sign(hspeed) //up = -1, down = 1.
	if (place_meeting(x+hspeed,y,obj_sideground))
	{
		//move as close as we can
		while (!place_meeting(x+onepixel,y,obj_sideground))
		{
		    x = x + onepixel;
		}
		hspeed = hspeed*0.75
		hspeed *= -1;
	}

	var onepixel = sign(vspeed) //up = -1, down = 1.
	if (place_meeting(x,y+vspeed,obj_sideground))
	{
		//move as close as we can
		while (!place_meeting(x,y+onepixel,obj_sideground))
		{
		    y = y + onepixel;
		}
		vspeed = 0;
	}

	angle_speed = angle_speed * 0.99

	angle += angle_speed
	
	//dead
	if place_meeting(x,y,obj_ground) and dead = false
	{
		dead = true	
		screenshake(10, 30, 0.2)//5,1
		audio_play_sound(snd_hitquieter,10,false)
	}

	if dead = true
	{
		global.counting = false
		if global.fail = false
		{
			global.fail = true
			global.hearts -= 1
		}
		image_alpha = 0
		with instance_create_depth(x,y,depth,obj_bottletop)
		{
			sprite_index = other.spr_tophalf
			angle_speed = other.angle_speed
			image_angle = other.angle
			hspeed = other.hspeed
			vspeed = other.vspeed
		}
		with instance_create_depth(x,y,depth,obj_bottlebottom)
		{
			sprite_index = other.spr_bottomhalf
			angle_speed = other.angle_speed
			image_angle = other.angle
			hspeed = other.hspeed
			vspeed = other.vspeed
		}
	}
}else
{
	hspeed = 0
	vspeed = 0
}

if global.fail = true
{
	hspeed = 0
	vspeed = 0
	angle_speed = 0
}