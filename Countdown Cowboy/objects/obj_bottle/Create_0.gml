x = irandom_range(32,room_width-32)
hspeed = random_range(-2,2)
angle_speed = hspeed*3
grav = 0.025
jump_speed = -2
hit = false
depth -= 102
angle = irandom_range(0,360)
started = false
dead = false

if index > global.juggle_num
{
	instance_destroy()
}

spr_tophalf = spr_bottle2top
spr_bottomhalf = spr_bottle2bottom

if index = 2 or index = 4
{
	sprite_index = spr_bottle1
	spr_tophalf = spr_bottle1top
	spr_bottomhalf = spr_bottle1bottom
	vspeed = -1
}else
{
	sprite_index = spr_bottle2
	spr_tophalf = spr_bottle2top
	spr_bottomhalf = spr_bottle2bottom
	vspeed = 0
}