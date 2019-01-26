draw_rectangle(x-1, y-1, x+boxWidth, y+boxHeight, false)
draw_sprite(spr_textbox, 0, x,y);
draw_set_font(fnt_text);

//increment character counter
if (charCount < string_length(text[page])) {
charCount += .5;
}
textPart = string_copy(text[page], 1, charCount);

//draw name
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_text_transformed(x+(boxWidth/2),y+yBuffer, name, textScale, textScale, 0);
draw_set_halign(fa_left);
//draw text
draw_set_color(c_white);
// boxWidth*5 was originally boxWidth - (2*xBuffer) in the tutorial, idk why that won't work here
draw_text_ext_transformed(x+xBuffer,y+(stringHeight*textScale)+yBuffer, textPart, stringHeight, boxWidth*5, textScale, textScale, 0);