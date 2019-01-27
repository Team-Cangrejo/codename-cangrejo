//textbox border
draw_rectangle(createX-1, createY-1, createX+boxWidth, createY+boxHeight, false)
//draw black box
draw_sprite(spr_textbox, 0, createX,createY);
draw_set_font(fnt_text);

//increment character counter
if (charCount < string_length(text[page])) {
charCount += .5;
}
textPart = string_copy(text[page], 1, charCount);

//draw name
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_text_transformed(createX+(boxWidth/2),createY+yBuffer, name, textScale, textScale, 0);
draw_set_halign(fa_left);
//draw text
draw_set_color(c_white);
// boxWidth*5 was originally boxWidth - (2*xBuffer) in the tutorial, idk why that won't work here
draw_text_ext_transformed(createX+xBuffer,createY+(stringHeight*textScale)+yBuffer, textPart, stringHeight, boxWidth*5, textScale, textScale, 0);