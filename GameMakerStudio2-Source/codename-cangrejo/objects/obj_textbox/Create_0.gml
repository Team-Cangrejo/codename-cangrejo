//I can't remember why this was added, since myText is used but if you delete this things will break
text = "The Quick Brown Fox Jumped Over The Lazy Dog. One Ring to Rule Them All, One Ring to Bind Them";

//set page for myText array
page =  0;

//buffer for edges of text
xBuffer = 1;
yBuffer = 1;

//set text size
textScale = .2;

//checking box sizes for drawing boxes/text
boxWidth = sprite_get_width(spr_textbox);
boxHeight = sprite_get_height(spr_textbox);

//spacing in between lines
stringHeight = (string_height(text));

//setting to this to init var, will be changed to npc self
creator = noone;

//number of characters drawn
charCount = 0;

//name of textbox? will have to check later
name = noone;

//coords for textbox spawn
createX = x-(boxWidth/2);
createY = y-(boxHeight*2+2);