x = clamp(x,view_w_half,room_width - view_w_half)
y = clamp(y,view_h_half,room_height - view_h_half)

//Update camera view
if instance_exists(obj_screenshake)
{
	if obj_screenshake.shake = false
	{
		camera_set_view_pos(cam,x-view_w_half,y-view_h_half)
	}
}