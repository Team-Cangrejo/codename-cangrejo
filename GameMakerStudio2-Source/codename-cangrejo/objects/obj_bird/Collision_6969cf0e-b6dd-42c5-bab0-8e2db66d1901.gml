if cry == true {
	if haveSound == true {
	audio_play_sound(sou_gull, 1, false);
	}
	cry = false;
	alarm[0] = room_speed*2;
}