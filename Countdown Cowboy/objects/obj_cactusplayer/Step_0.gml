//Get inputs (1 = pressed, 0 = not pressed)
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);
key_jump_held = keyboard_check(vk_space) || mouse_check_button(mb_left);

if dead = false and global.success = false and global.start = true
{

	//Work out where to move horizontally
	//hsp = (key_right - key_left) * hsp_walk;

	//Work out where to move vertically
	vsp = vsp + grav;
	
	if jump_remember > 0
	{
		jump_remember -= 1
	}
	//Work out if we should jump
	if global.success = false
	{
		if (key_jump) // and (place_meeting(x,y+1,obj_ground)) 
		{
		    //vsp = vsp_jump; 
			jump_remember = jump_remember_time
		}
		//Work out if we should jump
		if jump_remember > 0 and (place_meeting(x,y+1,obj_ground))
		{
		    vsp = vsp_jump; 
			jump_remember = 0
			audio_play_sound(snd_jump,10,false)
		}
	}
	if global.success = false
	{
		if vsp < 0 and !key_jump_held
		{
			vsp = max(vsp,vsp_jump/5)
		}
	}
	if place_meeting(x,y+1,obj_ground) and global.start = true
	{
		sprite_index = spr_cowboy	
		image_speed = 1
	}else if global.start = true
	{
		sprite_index = spr_cowboyjumping	
		image_speed = 0
		if vsp < 0
		{
			image_index = 0	
		}else
		{
			image_index = 1
		}
	}


	//Check for horizontal collisions and then move if we can
	var onepixel = sign(hsp) //moving left or right? right = 1, left = -1.
	if (place_meeting(x+hsp,y,obj_ground))
	{
	    //move as close as we can
	    while (!place_meeting(x+onepixel,y,obj_ground))
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
if place_meeting(x,y,obj_cactus) and dead = false
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
	if place_meeting(x,y+1,obj_ground)
	{
		sprite_index = spr_cowboyidle
	}else
	{
		sprite_index = spr_cowboyjumping
		image_speed = 0
	}
	hsp = 0
	vsp = 0
}

move_snap(0,1)