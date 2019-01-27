if integrity <= 0 {
	instance_destroy(self, false)
}
if(collision_circle(x,y, 32, obj_player, false, false)) {
	if obj_player.kSpace && invincible = false {
		integrity -= 1;
		//alarm[0] = (room_speed*1.5)
	}
}