if invincible_ == false && obj_quicksand.active == true {
	playerHealth -= 1;
	invincible_ = true;
	audio_play_sound(sou_damage,1,0);
	alarm[0] = room_speed;
}