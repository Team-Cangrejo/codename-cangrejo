text = "The Quick Brown Fox Jumped Over The Lazy Dog. One Ring to Rule Them All, One Ring to Bind Them";
page =  0;

xBuffer = 10;
yBuffer = 10;

boxWidth = sprite_get_width(spr_textbox) - (2*xBuffer);
boxHeight = sprite_get_height(spr_textbox) - (2*yBuffer);
stringHeight = string_height(text);
creator = noone;
charCount = 0;
name = noone;
