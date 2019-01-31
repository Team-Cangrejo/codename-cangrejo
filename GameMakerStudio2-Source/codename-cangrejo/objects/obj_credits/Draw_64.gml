/// @description 
/// @description 
vw = camera_get_view_width(camera_get_active())
vh = camera_get_view_height(camera_get_active())
display_set_gui_maximize()

draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_set_color(c_black)

draw_text(vw*0.5, vh*0.1, CreditLine)
draw_text(vw*0.5, vh*0.15, "Pihro (code, mapping, design)")
draw_text(vw*0.5, vh*0.2, "KitKatarine (art, code, mentorship, moral support)")

draw_text(vw*0.5, vh*0.35, "Music: ")
draw_text(vw*0.5, vh*0.4, "Digital Lemonade - Kevin MacLeod (incompetech.com)")
draw_text(vw*0.5, vh*0.45, "Licensed under Creative Commons: By Attribution 3.0 License")
draw_text(vw*0.5, vh*0.5, "http://creativecommons.org/licenses/by/3.0/")
draw_text(vw*0.5, vh*0.6, "SFX")
draw_text(vw*0.5,vh*0.65,"Paper Crumple by Nicole T")
draw_text(vw*0.5,vh*0.7,"https://opengameart.org/content/paper-crumple-sfx-sound-effect")

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