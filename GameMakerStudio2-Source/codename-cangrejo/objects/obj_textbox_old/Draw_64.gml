vw = view_get_wport(camera_get_active()) //get our current camera width
vh = view_get_hport(camera_get_active()) //get our current camera height
draw_set_color(c_black)
draw_rectangle(0, vh*0.85, vw, vh, false) //draw a neat black rectangle
draw_set_color(c_white)


draw_text_ext_transformed(vw*0.01, vh*0.86, message_draw, 16, vw, 1, 1, 0);

/*
 So I had some issues with the camera and getting the things to draw where I want them
 my usual method didn't work, but this seems to. 
 
 GameMaker is a mysterious engine and should be respected. >.>
*/