if spawned == false {
	instance_create_layer(x, y, "Instances", obj_bucket);
	spawned = true;
	alarm[0] = (room_speed*3)
}