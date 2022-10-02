default_image_index = 0 //when cursor not over button
hover_image_index = 1 //when cursor hovering over button
clicked_image_index = 2 //when button clicked

clicked = false
do_action = false

frame_index = 0
y_init = y

ini_open("save.ini");
global.mute = ini_read_real("save", "mute", false)
ini_close();

//alarm[0] = 8

if global.mute = true
{
	audio_sound_gain(snd_alarm, 0, 0);
	audio_sound_gain(snd_blip, 0, 0);
	audio_sound_gain(snd_blip2, 0, 0);
	audio_sound_gain(snd_bounce, 0, 0);
	audio_sound_gain(snd_dooropen, 0, 0);
	audio_sound_gain(snd_fail, 0, 0);
	audio_sound_gain(snd_gameover, 0, 0);
	audio_sound_gain(snd_glassshatter, 0, 0);
	audio_sound_gain(snd_gunshot, 0, 0);
	audio_sound_gain(snd_gunshot2, 0, 0);
	audio_sound_gain(snd_heartbeat, 0, 0);
	audio_sound_gain(snd_hit, 0, 0);
	audio_sound_gain(snd_hitquieter, 0, 0);
	audio_sound_gain(snd_jump, 0, 0);
	audio_sound_gain(snd_music, 0, 0);
	audio_sound_gain(snd_start, 0, 0);
}else
{
	audio_sound_gain(snd_alarm, 1, 0);
	audio_sound_gain(snd_blip, 1, 0);
	audio_sound_gain(snd_blip2, 1, 0);
	audio_sound_gain(snd_bounce, 1, 0);
	audio_sound_gain(snd_dooropen, 1, 0);
	audio_sound_gain(snd_fail, 1, 0);
	audio_sound_gain(snd_gameover, 1, 0);
	audio_sound_gain(snd_glassshatter, 1, 0);
	audio_sound_gain(snd_gunshot, 1, 0);
	audio_sound_gain(snd_gunshot2, 1, 0);
	audio_sound_gain(snd_heartbeat, 1, 0);
	audio_sound_gain(snd_hit, 1, 0);
	audio_sound_gain(snd_hitquieter, 1, 0);
	audio_sound_gain(snd_jump, 1, 0);
	audio_sound_gain(snd_music, 1, 0);
	audio_sound_gain(snd_start, 1, 0);
}