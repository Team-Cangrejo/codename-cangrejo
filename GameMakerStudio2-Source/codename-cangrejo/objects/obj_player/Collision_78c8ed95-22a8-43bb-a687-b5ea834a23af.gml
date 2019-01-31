if teleported == false {
	holeInstance = instance_nearest(x,y,obj_hidden_teleport)
	x = holeInstance.xDest
	y = holeInstance.yDest
	teleported = true
	alarm[1] = room_speed*2
}