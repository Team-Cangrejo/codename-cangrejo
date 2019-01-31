if(collision_circle(x,y, 16, obj_player, false, false)) {
	if obj_player.kSpace {
	if(myTextbox == noone) {
	myTextbox = instance_create_layer(x,y, "Text", obj_textbox);
	myTextbox.text = myText;
	myTextbox.creator = self;
	myTextbox.name = myName;
	}
	}
}
//destroys textbox instance if there are no pages left
else {
	if(myTextbox != noone) {
	instance_destroy(myTextbox);
	myTextbox = noone;
	}
}