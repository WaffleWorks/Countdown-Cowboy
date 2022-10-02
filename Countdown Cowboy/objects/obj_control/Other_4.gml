global.start = false
global.counting = true
global.success = false
global.fail = false
play_alarm = false
play_fail = false
alarm[0] = 60

if room = Menu
{
	global.nextroom = room_order[0]	
}

if global.nextroom = room_order[0]
{
	global.nextroom = room_order[1]
}else if global.nextroom = room_order[1]
{
	global.nextroom = room_order[2]
}else if global.nextroom = room_order[2]
{
	global.nextroom = room_order[3]
}else if global.nextroom = room_order[3]
{
	global.nextroom = room_order[0]
}

if room != Menu
{
	audio_play_sound(snd_start,0,false)	
	if global.score < global.highscore
	{
		global.newbest = false
		ini_open("save.ini");
		ini_write_real("save", "newbest", false)
		ini_close();
	}
}

ini_open("save.ini");
if global.score > global.highscore
{
	ini_write_real("save", "score", global.score)
	global.newbest = true
	ini_write_real("save", "newbest", true)
}
ini_close();