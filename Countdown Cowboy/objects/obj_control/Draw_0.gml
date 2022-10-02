if room = Menu
{
	draw_set_font(fnt_earlygameboy)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_color(c_black)
	draw_text_outlined(256+5,88,c_black,c_white,"Best: " + string(global.highscore))//string(global.highscore)
}