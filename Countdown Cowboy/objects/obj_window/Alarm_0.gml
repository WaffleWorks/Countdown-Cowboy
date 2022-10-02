open = false
if global.success = false and global.fail = false
{
	with instance_place(x,y,obj_saloonenemy)
	{
		if destroy = false
		{
			instance_destroy()
		}
	}
}