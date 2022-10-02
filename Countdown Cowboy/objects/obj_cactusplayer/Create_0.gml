grav = 0.2; //gravity
hsp = 0; //current horizontal speed
vsp = 0; //current vertical speed
hsp_walk = 2; //walk speed
vsp_jump = -6.5; //jump speed
dead = false
depth -= 110

jump_remember = 0
jump_remember_time = 8

with instance_create_depth(x,y,depth,obj_fade)
{
	sprite_index = spr_arrowup
	alpha = 3.5
}