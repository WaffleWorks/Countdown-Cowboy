default_image_index = 0 //when cursor not over button
hover_image_index = 1 //when cursor hovering over button
clicked_image_index = 2 //when button clicked

clicked = false
do_action = false

frame_index = 0
y_init = y

ini_open("save.ini");
global.fullscreen = ini_read_real("save", "fullscreen", false)
ini_close();

//alarm[0] = 8


window_set_fullscreen(global.fullscreen)