grav = 0.15; //gravity
hsp = 0; //current horizontal speed
vsp = 0; //current vertical speed
hsp_walk = 2; //walk speed
vsp_jump = -5; //jump speed
dead = false
depth -= 10
/*
with instance_create_depth(x,y,depth,obj_fade)
{
	sprite_index = spr_arrowleft
	alpha = 3.5
}
with instance_create_depth(x,y,depth,obj_fade)
{
	sprite_index = spr_arrowright
	alpha = 3.5
}*/
reset_image_index = false