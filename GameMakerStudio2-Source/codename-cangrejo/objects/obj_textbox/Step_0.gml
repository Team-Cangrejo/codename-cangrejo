if (keyboard_check_pressed(ord("Z"))) {
	//this allows to skip text by pressing Z again
	if(charCount < string_length(text[page])) {
		charCount = string_length(text[page])
	}
	//this draws text one letter at a time
	else if(page+1 < array_length_1d(text)) {
		page += 1;
		charCount = 0;
	}
	else {
		instance_destroy();
		creator.alarm[1] = 1;
	}
}