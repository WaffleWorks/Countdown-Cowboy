/// @description hearts/score
if show_hearts = true
{
	if global.hearts = 2
	{
		draw_sprite_ext(spr_heart,0,112,room_height/2,heart_xscale,heart_yscale,0,c_white,1)
		draw_sprite_ext(spr_heart,0,room_width/2,room_height/2,heart_xscale,heart_yscale,0,c_white,1)
		draw_sprite_ext(spr_heartblinking,heart_index,room_width-112,room_height/2,heart_xscale,heart_yscale,0,c_white,1)	
	}else if global.hearts = 1
	{
		draw_sprite_ext(spr_heart,0,112,room_height/2,heart_xscale,heart_yscale,0,c_white,1)
		draw_sprite_ext(spr_heartblinking,heart_index,room_width/2,room_height/2,heart_xscale,heart_yscale,0,c_white,1)
		draw_sprite_ext(spr_heartempty,0,room_width-112,room_height/2,heart_xscale,heart_yscale,0,c_white,1)	
	}else if global.hearts = 0
	{
		draw_sprite_ext(spr_heartblinking,heart_index,112,room_height/2,heart_xscale,heart_yscale,0,c_white,1)
		draw_sprite_ext(spr_heartempty,0,room_width/2,room_height/2,heart_xscale,heart_yscale,0,c_white,1)
		draw_sprite_ext(spr_heartempty,0,room_width-112,room_height/2,heart_xscale,heart_yscale,0,c_white,1)	
		if global.gameover = false
		{
			global.gameover = true
			ini_open("save.ini");
			if global.score > global.highscore
			{
				ini_write_real("save", "score", global.score)
				global.newbest = true
				ini_write_real("save", "newbest", true)
			}
			ini_close();
		}
	}else if global.hearts = 3
	{
		draw_sprite_ext(spr_heart,0,112,room_height/2,heart_xscale,heart_yscale,0,c_white,1)
		draw_sprite_ext(spr_heart,0,room_width/2,room_height/2,heart_xscale,heart_yscale,0,c_white,1)
		draw_sprite_ext(spr_heart,0,room_width-112,room_height/2,heart_xscale,heart_yscale,0,c_white,1)	
	}else if global.hearts < 0
	{
		draw_sprite_ext(spr_heartempty,0,112,room_height/2,heart_xscale,heart_yscale,0,c_white,1)
		draw_sprite_ext(spr_heartempty,0,room_width/2,room_height/2,heart_xscale,heart_yscale,0,c_white,1)
		draw_sprite_ext(spr_heartempty,0,room_width-112,room_height/2,heart_xscale,heart_yscale,0,c_white,1)	
		if global.gameover = false
		{
			global.gameover = true
			ini_open("save.ini");
			if global.score > global.highscore
			{
				ini_write_real("save", "score", global.score)
				global.newbest = true
				ini_write_real("save", "newbest", true)
			}
			ini_close();
		}
	}
}
//score
draw_set_font(fnt_earlygameboy)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text_outlined(room_width/2,10,c_black,c_white,"Score: " + string(global.score))

if show_scr = true
{
	draw_sprite_ext(spr_textscore100,0,room_width/2,room_height/2-text_ydiff,text_xscale,text_yscale,0,c_white,text_alpha)
}

draw_self()