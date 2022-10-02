random_odds = 0
if global.fail = false and global.success = false
{
	random_odds = random_range(0,1)
	with instance_create_depth(room_width+32,160,depth,obj_cactus)
	{
		other.cactus_yscale = irandom_range(other.min_yscale,other.max_yscale)
		image_yscale = other.cactus_yscale
		hspeed = -other.spd
		if other.random_odds < other.top_cactus_odds and image_yscale != 6
		{
			show_debug_message("spawn top cactus")
			with instance_create_depth(x,y-(16*image_yscale)-(other.gap_width),depth,obj_cactus2)
			{
				image_yscale = 10
				hspeed = other.hspeed
			}
		}
	}
}
	
	
if cactus_yscale = 2
{
	alarm[0] = 50*(alarm_num*1.1)//irandom_range(50*(alarm_num*1.1),75*(alarm_num*1.1))
}else if cactus_yscale = 3
{
	alarm[0] = 55*(alarm_num*1.05)//irandom_range(55*(alarm_num*1.05),85*(alarm_num*1.05))
}else if cactus_yscale = 4
{
	alarm[0] = 65*alarm_num//irandom_range(65*alarm_num,95*alarm_num)
}else if cactus_yscale = 5
{
	alarm[0] = 75*(alarm_num*1)//irandom_range(75*(alarm_num*1),105*(alarm_num*1))
}else if cactus_yscale = 6
{
	alarm[0] = 90*alarm_num*(alarm_num*1)//irandom_range(90*alarm_num*(alarm_num*1),115*alarm_num*(alarm_num*1))
}