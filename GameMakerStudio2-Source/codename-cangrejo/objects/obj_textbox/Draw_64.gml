//textbox border
vw = view_get_wport(camera_get_active())
vh = view_get_hport(camera_get_active())
display_set_gui_maximize();

//white rectangle
draw_rectangle(vw*0.01, vh*0.01, vw*0.79, vh*0.25, false)
//draw black box
draw_set_color(c_black)
draw_rectangle(vw*0.02, vh*0.02, vw*0.78, vh*0.24, false)
draw_set_color(c_white)
//draw_sprite(spr_textbox, 0, createX,createY);
draw_set_font(fnt_text);

//increment character counter
if (charCount < string_length(text[page])) {
charCount += .5;
}
textPart = string_copy(text[page], 1, charCount);

//draw name
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_text_transformed(vw*0.4,vh*0.025, name, textScale, textScale, 0);
draw_set_halign(fa_left);
//draw text
draw_set_color(c_white);
// boxWidth*5 was originally boxWidth - (2*xBuffer) in the tutorial, idk why that won't work here
draw_text_ext_transformed(vw*0.03,vh*0.08, textPart, stringHeight+2, vw*0.77, textScale, textScale, 0);