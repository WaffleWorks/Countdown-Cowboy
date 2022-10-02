shoot = false
hit = false
if global.saloon_num = 1
{
	shoot_time = 70
}else if global.saloon_num = 2
{
	shoot_time = 55
}else if global.saloon_num = 3
{
	shoot_time = 45
}else if global.saloon_num = 4
{
	shoot_time = 40
}else if global.saloon_num = 5
{
	shoot_time = 35
}else if global.saloon_num >= 6
{
	shoot_time = 30//25
}
destroy_time = shoot_time+15
alarm[0] = shoot_time
alarm[2] = shoot_time-10//5
alarm[1] = destroy_time
destroy = false

hit_sprite = spr_saloonenemyhit
shoot_sprite = spr_saloonenemyfiring
image_speed = 0
depth = 250
alpha = 2