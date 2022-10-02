if global.start = true and start = false
{
	alarm[0] = 1
	start = true
}
if global.start = true and global.fail = false and global.success = false and global.counting = true
{
	with obj_cactusground
	{
		x -= other.spd
	}
}