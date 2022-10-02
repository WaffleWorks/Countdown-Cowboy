min_spawn_time = 60
max_spawn_time = 120
start = false
cactus_yscale = 0

random_odds = 0
if global.cactus_num = 1
{
	min_yscale = 2
	max_yscale = 5
	spd = 2.5
	alarm_num = 1.3
	top_cactus_odds = -0.01
	gap_width = 68
}else if global.cactus_num = 2
{
	min_yscale = 2
	max_yscale = 6
	spd = 3
	alarm_num = 1
	top_cactus_odds = 0.2
	gap_width = 68
}else if global.cactus_num = 3
{
	min_yscale = 2
	max_yscale = 6
	spd = 3.5
	alarm_num = 0.9
	top_cactus_odds = 0.33
	gap_width = 64
}else if global.cactus_num = 4
{
	min_yscale = 2
	max_yscale = 6
	spd = 4
	alarm_num = 1
	top_cactus_odds = 0.5
	gap_width = 56
}else if global.cactus_num >= 5
{
	min_yscale = 2
	max_yscale = 6
	spd = 4.5
	alarm_num = 0.9
	top_cactus_odds = 0.6
	gap_width = 52
}