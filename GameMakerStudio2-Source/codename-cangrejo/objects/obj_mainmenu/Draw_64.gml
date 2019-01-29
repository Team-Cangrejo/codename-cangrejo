/// @description 
/// @description 
vw = view_get_wport(camera_get_active())
vh = view_get_hport(camera_get_active())
draw_set_halign(fa_center)
draw_set_valign(fa_center)

//draw buttons
//draw_rectangle(vw*0.4, vh*0.45, vw*0.6, vh*0.55, true)
//draw title
draw_sprite_ext(spr_titlecard, 0, vw*0.5, vh*0.20, 2, 2, 0, c_white, 1)

//playbutton
if point_in_rectangle(mouse_x, mouse_y, vw*0.4, vh*0.45, vw*0.6, vh*0.55)
{
	draw_sprite_ext(spr_mmbutton, image_index, vw*0.5, vh*0.5, 0.5, 0.5, 0, c_gray, 1)
	if mouse_check_button_pressed(mb_left)
	{
		room_goto(rm_test)
	}
}
else
{
	draw_sprite_ext(spr_mmbutton, image_index, vw*0.5, vh*0.5, 0.5, 0.5, 0, c_white, 1)
}
draw_text_transformed(vw*0.5, vh*0.5, "PLAY", 1, 1, 0)

//controls button
if point_in_rectangle(mouse_x, mouse_y, vw*0.4, vh*0.57, vw*0.6, vh*0.67) //WOW ARE YOU READY FOR INEFFICIENT PLACEMENT BECAUSE I SURE AM
{
	draw_sprite_ext(spr_mmbutton, image_index, vw*0.5, vh*0.62, 0.5, 0.5, 0, c_gray, 1)
	if mouse_check_button_pressed(mb_left)
	{
		room_goto(rm_controls)
	}
}
else
{
	draw_sprite_ext(spr_mmbutton, image_index, vw*0.5, vh*0.62, 0.5, 0.5, 0, c_white, 1)
}
draw_text_transformed(vw*0.5, vh*0.62, "CONTROLS", 1, 1, 0)

//Credits button
if point_in_rectangle(mouse_x, mouse_y, vw*0.4, vh*0.69, vw*0.6, vh*0.79)
{
	draw_sprite_ext(spr_mmbutton, image_index, vw*0.5, vh*0.74, 0.5, 0.5, 0, c_gray, 1)
	if mouse_check_button_pressed(mb_left)
	{
		room_goto(rm_credits)
	}
}
else
{
	draw_sprite_ext(spr_mmbutton, image_index, vw*0.5, vh*0.74, 0.5, 0.5, 0, c_white, 1)
}
draw_text_transformed(vw*0.5, vh*0.74, "CREDITS", 1, 1, 0)



draw_set_halign(fa_left)
draw_set_valign(fa_top)