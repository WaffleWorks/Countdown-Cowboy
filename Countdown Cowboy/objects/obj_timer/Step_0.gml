if my_time > 0 and global.start = true and global.counting = true
{
	my_time -= delta_time/1000000
}else if global.start = true and global.counting = true
{
	my_time = 0
	global.start = false
	global.success = true
}

show_time = ceil(my_time)
