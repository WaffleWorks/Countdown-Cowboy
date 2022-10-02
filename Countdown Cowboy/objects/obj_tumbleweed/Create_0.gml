hsp = 0
vsp = 0
global.bounce_sound = false
if global.tumbleweed_num = 1
{
	min_move_speed = 2
	max_move_speed = 2.5
}else if global.tumbleweed_num = 2
{
	min_move_speed = 1.5
	max_move_speed = 2.5
}else if global.tumbleweed_num = 3
{
	min_move_speed = 1
	max_move_speed = 2
}else if global.tumbleweed_num = 4
{
	min_move_speed = 1
	max_move_speed = 2
}else if global.tumbleweed_num >= 5
{
	min_move_speed = 1
	max_move_speed = 2.5
}
move_speed = random_range(min_move_speed,max_move_speed)
//dir = choose(-1,1)
grav = 0.15
bounce_height = random_range(-4,-5.5)//3.5,5.5
side_collision = true

if index = 1 or index = 3
{
	x = irandom_range(16,(room_width/2)-16)
}else
{
	x = irandom_range((room_width/2)+16,room_width-16)
}

if x < room_width / 2
{
	dir = -1
}else
{
	dir = 1
}
temp_bounce_height = bounce_height
spawn_height = 0
while (temp_bounce_height < 0)
{
	spawn_height += temp_bounce_height
	temp_bounce_height += grav
}
y = obj_ground.y + spawn_height
delay = 0

angle_speed = hsp*-3
angle = irandom_range(0,360)

if index > global.tumbleweed_num
{
	instance_destroy()
}