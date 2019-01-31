 /// @description 
/// @description 
vw = camera_get_view_width(camera_get_active())
vh = camera_get_view_height(camera_get_active())
display_set_gui_maximize()
draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_set_color(c_black)

/*
Put draw_text stuff here.
*/
draw_text(vw*0.5, vh*0.45, "A/D = Move Left/Right")
draw_text(vw*0.5, vh*0.5, "Left Arrow/Right Arrow = Rotate crab")
draw_text(vw*0.5, vh*0.55, "Space = Interact with stuff")

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_white)

if point_in_rectangle(mouse_x, mouse_y, 0, 0, vw*0.1, vh*0.1)
{
	draw_sprite_ext(spr_arrow, image_index, vw*0.05, vh*0.05, 1, 1, 0, c_gray, 1)
	if mouse_check_button_pressed(mb_left)
	{
		room_goto(rm_main_menu);	
	}
}
else
{
	draw_sprite_ext(spr_arrow, image_index, vw*0.05, vh*0.05, 1, 1, 0, c_white, 1)
}