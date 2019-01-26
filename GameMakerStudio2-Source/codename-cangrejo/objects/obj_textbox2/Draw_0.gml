draw_sprite(spr_textbox, 0, x,y);
draw_set_font(fnt_text);


if (charCount < string_length(text[page])) {
charCount += .5;
}
textPart = string_copy(text[page], 1, charCount);

draw_text(x,y, name);

draw_text_ext(x+xBuffer,y+stringHeight+yBuffer, textPart, stringHeight, boxWidth);