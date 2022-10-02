randomize()
global.hearts = 3
global.start = false
global.counting = true
global.success = false
global.fail = false
global.gameover = false
global.score = 0

global.cactus_num = 1
global.tumbleweed_num = 1
global.saloon_num = 1
global.juggle_num = 1

play_alarm = false
play_fail = false

ini_open("save.ini");
global.highscore = ini_read_real("save", "score", 0)
ini_close();
 
display_set_gui_size(room_width,room_height)
//generate random order of events
room_order = [Menu,Menu,Menu,Menu]
rooms = [Tumbleweed,Juggle,Cactus,Saloon] //[Tumbleweed,Juggle,Cactus,Saloon]

max_num = 3
min_num = 0

repeat(4)
{
	random_num = irandom_range(0,max_num)
	room_order[min_num] = rooms[random_num]
	array_delete(rooms,random_num,1)
	max_num -= 1
	min_num += 1
}

show_debug_message(room_get_name(room_order[0])+room_get_name(room_order[1])+room_get_name(room_order[2])+room_get_name(room_order[3]))

global.nextroom = room_order[0]
if !audio_is_playing(snd_music)
{
	audio_play_sound(snd_music,10,true)
}