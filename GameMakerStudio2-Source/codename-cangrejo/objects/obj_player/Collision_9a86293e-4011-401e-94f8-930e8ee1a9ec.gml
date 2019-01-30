if invincible_ == false {
	playerHealth -= 1;
	invincible_ = true;
	if haveSound == true
	{
		audio_play_sound(sou_damage,1,0);
	}
	alarm[0] = room_speed;
}