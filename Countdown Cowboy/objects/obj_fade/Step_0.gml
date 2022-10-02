if sprite_index != noone
{
	image_alpha = alpha
}

if alpha > 0
{
	alpha -= 0.05
}else
{
	instance_destroy()	
}