draw_sprite(sprite_index,0,mouse_x,mouse_y);
if room = Saloon
{
	for(i = 0; i < ammo; i++)
	{
		draw_sprite(spr_bullet,0,16+(i*12),room_height-12)
	}
}