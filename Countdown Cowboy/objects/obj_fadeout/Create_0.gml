color = make_color_rgb(139,172,15)
alpha = 0
alarm[0] = 4
depth = -550

if room = Cactus
{
	global.cactus_num += 1
}else if room = Tumbleweed
{
	global.tumbleweed_num += 1
}else if room = Saloon
{
	global.saloon_num += 1
}else if room = Juggle
{
	global.juggle_num += 1
}