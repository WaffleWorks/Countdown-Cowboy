if image_xscale < 1 and image_yscale < 1 and expanded = false
{
	image_xscale += (1/30)
	image_yscale += (1/30)
}else
{
	expanded = true
}

if expanded = true and image_alpha > 0
{
	image_alpha -= (1/15)
	if image_alpha <= 1
	{
		image_xscale -= (1/30)
		image_yscale -= (1/30)
	}
}else if image_alpha <= 0
{
	if fail = true and global.gameover = false
	{
		show_hearts = true
	}else if success = true and fade = false
	{
		show_scr = true
	}else if sprite_index = spr_textgameover and fade = false
	{
		//fade	
		instance_create_depth(0,0,depth,obj_fadeout)
		fade = true
	}
}

//reset
if global.success = true and reset = false
or global.fail = true and reset = false
{
	reset = true
	if global.success = true
	{
		sprite_index = spr_textsuccess
		success = true
	}else if global.fail = true
	{
		if global.gameover = false
		{
			sprite_index = spr_textfail	
			fail = true
		}else
		{
			sprite_index = spr_textgameover
			audio_stop_sound(snd_music)
			audio_play_sound(snd_gameover,10,false)
			fail = true
		}
	}
	x = room_width / 2
	y = room_height / 2
	image_xscale = 0
	image_yscale = 0
	if global.gameover = false
	{
		image_alpha = 3
	}else
	{
		image_alpha = 10
	}
	expanded = false
}

if show_hearts = true
{
	if heart_index = 2 or heart_index = 2 or heart_index = 4 or heart_index = 6
	{
		audio_play_sound(snd_heartbeat,0,false)
	}
	if heart_index < sprite_get_number(spr_heartblinking)-1
	{
		if heart_xscale < 1 and heart_yscale < 1
		{
			heart_xscale += (1/15)
			heart_yscale += (1/15)
		}
		
		heart_index += (1/12)
	}else
	{
		if heart_xscale > 0 and heart_yscale > 0
		{
			heart_xscale -= (1/15)
			heart_yscale -= (1/15)
		}else if fade = false
		{
			//fade
			if global.gameover = false
			{
				instance_create_depth(0,0,depth,obj_fadeout)
				fade = true
			}else
			{
				if reset = true and gameover = false
				{
					reset = false
					gameover = true
					show_debug_message("Game Over")
				}
			}
		}
	}
	
}

if show_scr = true
{
	if text_xscale < 1
	{
		text_xscale += (1/30)
		text_yscale += (1/30)
		text_ydiff+=0.5
		if score_max > 0
		{
			score_max -= 2
			global.score += 2
		}
	}else
	{
		if text_alpha > 0
		{
			text_alpha -= (1/30)
			text_ydiff+=0.5
			if score_max > 0
			{
				score_max -= 2
				global.score += 2
			}
		}else if fade = false
		{
			//fade
			if global.gameover = false 
			{
				instance_create_depth(0,0,depth,obj_fadeout)
				fade = true
			}
		}
	}
	if score_max > 0
	{
		if play_blip = 0
		{
			audio_play_sound(snd_blip2,0,false)
		}
		if play_blip < 2
		{
			play_blip += 1
		}else
		{
			play_blip = 0	
		}	
	}
	
}