for(i = 0;i<image_yscale;i++)
{
	if i < image_yscale-1
	{
		draw_sprite(spr_cactusbottom,0,x,y-(i*16))
	}else
	{
		draw_sprite(spr_cactustop,0,x,y-(i*16))
	}
}