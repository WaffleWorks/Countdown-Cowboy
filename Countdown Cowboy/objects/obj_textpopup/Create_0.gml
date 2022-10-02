if room = Tumbleweed
{
	sprite_index = spr_textdodge
}else if room = Juggle
{
	sprite_index = spr_textjuggle
}else if room = Saloon
{
	sprite_index = spr_textshoot
}else if room = Cactus
{
	sprite_index = spr_textjump
}
x = room_width / 2
y = room_height / 2
image_xscale = 0
image_yscale = 0
image_alpha = 3

play_blip = 0

expanded = false
reset = false
fail = false
success = false
show_hearts = false
show_scr = false
score_max = 100
heart_xscale = 0
heart_yscale = 0
text_xscale = 0
text_yscale = 0
text_alpha = 2
text_ydiff = 0
heart_index = 0
fade = false
gameover = false

depth -= 101