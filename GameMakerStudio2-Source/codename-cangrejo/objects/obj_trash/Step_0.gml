if(collision_circle(x,y, 12, obj_player, false, false)) {
	if obj_player.kSpace {
		instance_destroy(self, false)
		//show_debug_message("attack")
	}
}
