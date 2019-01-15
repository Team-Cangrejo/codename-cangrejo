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
				my_dir = irandom_range(0,359);
				moveX = lengthdir_x(spd, my_dir);
				moveY = lengthdir_y(spd, my_dir);
				counter = 0;
		}
	}
		if(collision_circle(x,y, 64, obj_player, false, false)){
		state = states.alert;
		}
		
		image_xscale = sign(moveX);
		#endregion
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
}