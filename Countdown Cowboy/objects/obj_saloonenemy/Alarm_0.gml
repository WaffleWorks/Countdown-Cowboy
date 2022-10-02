/// @description shoot = true
if destroy = false and global.success = false and global.fail = false
{
	shoot = true
	screenshake(5, 75, 0.2)//5,1
	audio_play_sound(snd_gunshot2,10,false)
}