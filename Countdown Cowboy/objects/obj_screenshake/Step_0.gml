if (shake) 
{ 
	shake_time -= 1; 
	xval = choose(-shake_magnitude, shake_magnitude); 
	yval = choose(-shake_magnitude, shake_magnitude); 
	
	with obj_camera
	{
		camera_set_view_pos(cam,x-view_w_half+other.xval,y-view_h_half + other.yval)//camera_set_view_pos(view_camera[0], _xval, _yval); 
	}

	if (shake_time <= 0) 
	{ 
		shake_magnitude -= shake_fade; 

		if (shake_magnitude <= 0) 
		{ 
			with (obj_camera)
			{
				camera_set_view_pos(cam,x-view_w_half,y-view_h_half)//camera_set_view_pos(view_camera[0], 0, 0); 
			}
	        shake = false; 
		} 
	} 
}