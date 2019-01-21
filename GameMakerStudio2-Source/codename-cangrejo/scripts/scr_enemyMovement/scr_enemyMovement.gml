///Idle
#region Idle
if state = statesArray[0]{
	x += 0
	y += 0
}
#endregion
///Wander
#region Wander
else if state = statesArray[1]{
	if (mv_dir == 0 && place_free(x, y-(sprite_yoffset/4))) {
		x += 0;
		y += -spd;
	}
	else if (mv_dir == 90 && place_free(x+(sprite_xoffset/4), y)) {
		x += spd;
		y += 0;
	}
	else if (mv_dir == 180 && place_free(x, y+(sprite_yoffset/4))) {
		x += 0;
		y += spd;
	}
	else if (mv_dir == 270 && place_free(x-(sprite_xoffset/4), y)) {
		x += -spd;
		y += 0;
	}
}
#endregion
///Alert
#region Alert

else if state = statesArray[2]{
	mv_dir = point_direction(x,y, obj_player.x, obj_player.y);
	moveX = lengthdir_x(spd, mv_dir);
	moveY = lengthdir_y(spd, mv_dir);
	x += moveX;
	y += moveY;
}
#endregion
///Collision
#region Collision
else if state = statesArray[3]{
	x+=0;
	y+=0;
}
#endregion