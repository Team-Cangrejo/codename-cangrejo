if(state == states.idle){
	#region Idle
	counter +=1;
	
	if(counter >= room_speed * 3){
		var change = choose(0,1);
		switch(change){
			case 0: state = states.wander;
			case 1: counter = 0; break;
		}
	}
	if(collision_circle(x,y, 64, obj_player, false, false)){
		state = states.alert;
	}
	#endregion
	show_debug_message("Idle!")
}

else if(state == states.wander){
	#region Wander
	
	counter +=1;
	x += moveX;
	y += moveY;
	
	if(counter >= room_speed * 3){
		var change = choose(0,1);
		switch(change){
			case 0: state = states.idle;
			case 1:
				mv_dir = (irandom_range(0,3) * 90);
				if (mv_dir == 0 && place_free(x, y-(sprite_yoffset))) {
					moveX = 0;
					moveY = -spd;
				}
				else if (mv_dir == 90 && place_free(x+(sprite_xoffset), y)) {
					moveX = spd;
					moveY = 0;
				}
				else if (mv_dir == 180 && place_free(x, y+(sprite_yoffset))) {
					moveX = 0;
					moveY = spd;
				}
				else if (mv_dir == 270 && place_free(x-(sprite_xoffset), y)) {
					moveX = -spd;
					moveY = 0;
				}

				counter = 0;
		}
	}
		if(collision_circle(x,y, 64, obj_player, false, false)){
		state = states.alert;
		}
		
		image_xscale = sign(moveX);
		#endregion
		show_debug_message("Wander!")
}

else if(state ==states.alert){
	#region Alert
	
	my_dir = point_direction(x,y, obj_player.x, obj_player.y)
	moveX = lengthdir_x(spd, my_dir);
	moveY = lengthdir_y(spd, my_dir);
	x += moveX;
	y += moveY;
	
	if(!collision_circle(x,y, 64, obj_player, false, false)){
		state = states.idle;
	}
	if( collision_circle(x,y, 32, obj_player, false, false)){
		state = states.attack;
	}
	image_xscale = sign(moveX);
	#endregion
	show_debug_message("Alert!")
}

else if(state == states.attack){
	#region Attack
	
	my_dir = point_direction(x,y, obj_player.x, obj_player.y)
	moveX = lengthdir_x(spd, my_dir);
	moveY = lengthdir_y(spd, my_dir);
	x += moveX;
	y += moveY;
	
	if(!collision_circle(x,y, 64, obj_player, false, false)){
		state = states.idle;
	}
	if( collision_circle(x,y, 32, obj_player, false, false)){
		state = states.attack;
	}
	image_xscale = sign(moveX);
	#endregion
	show_debug_message("Attack!")
}