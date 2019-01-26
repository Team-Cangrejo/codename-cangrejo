draw_rectangle(x-2, y-2, x+402, y+102, false)
draw_sprite(spr_textbox, 0, x,y);
draw_set_font(fnt_text);

//set text speed
if (charCount < string_length(text[page])) {
charCount += .5;
}
textPart = string_copy(text[page], 1, charCount);

//draw name
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_text(x+(boxWidth/2),y+yBuffer, name);
draw_set_halign(fa_left);
//draw text
draw_set_color(c_white);
draw_text_ext(x+xBuffer,y+stringHeight+yBuffer, textPart, stringHeight, boxWidth);