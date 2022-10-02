//Get inputs (1 = pressed, 0 = not pressed)
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_jump = keyboard_check(vk_space);

if dead = false and global.success = false
{

	//Work out where to move horizontally
	hsp = (key_right - key_left) * hsp_walk;
	
	if hsp > 0
	{
		image_xscale = 1	
	}else if hsp < 0
	{
		image_xscale = -1	
	}
	if hsp != 0 and global.success = false
	{
		sprite_index = spr_cowboy	
		if reset_image_index = false
		{
			image_index = 0
			reset_image_index = true
		}
	}else
	{
		sprite_index = spr_cowboyidle
		reset_image_index = false
	}

	//Work out where to move vertically
	vsp = vsp + grav;

	//Work out if we should jump
	if (place_meeting(x,y+1,obj_ground)) and (key_jump)
	{
	    //vsp = vsp_jump; 
	}

	//Check for horizontal collisions and then move if we can
	var onepixel = sign(hsp) //moving left or right? right = 1, left = -1.
	if (place_meeting(x+hsp,y,obj_sideground))
	{
	    //move as close as we can
	    while (!place_meeting(x+onepixel,y,obj_sideground))
	    {
	        x = x + onepixel;
	    }
	    hsp = 0;
	}
	x = x + hsp;

	//Check for vertical collisions and then move if we can
	var onepixel = sign(vsp) //up = -1, down = 1.
	if (place_meeting(x,y+vsp,obj_ground))
	{
	    //move as close as we can
	    while (!place_meeting(x,y+onepixel,obj_ground))
	    {
	        y = y + onepixel;
	    }
	    vsp = 0;
	}
	y = y + vsp;
}

//collision
if place_meeting(x,y,obj_tumbleweed) and dead = false
{
	dead = true	
	vsp = -3
	screenshake(10, 30, 0.2)//5,1
	audio_play_sound(snd_hitquieter,10,false)
}

if dead = true
{
	vsp += grav
	y += vsp
	sprite_index = spr_cowboyfront
	global.counting = false
	if bbox_top > room_height and global.fail = false //outside room
	{
		global.fail = true
		global.hearts -= 1
	}
}

if global.success = true
{
	sprite_index = spr_cowboyidle
}

move_snap(0,1)