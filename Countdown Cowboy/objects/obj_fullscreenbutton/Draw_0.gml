if room = Menu
{
	draw_self()
	draw_set_font(fnt_earlygameboy)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_sprite(spr_fullscreengui,global.fullscreen,x,y)
}