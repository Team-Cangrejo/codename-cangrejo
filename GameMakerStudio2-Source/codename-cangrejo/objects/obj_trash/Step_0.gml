if(collision_circle(x,y, 12, obj_player, false, false)) {
	if obj_player.kSpace {
		//instance_destroy(self, false)
		if haveSound == true {
			audio_play_sound(sou_trash,1,0);
		}
		instance_deactivate_object(self);
		//show_debug_message("attack")
	}
}
