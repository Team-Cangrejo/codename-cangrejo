enum states {
	idle,
	wander,
	alert,
	attack
}

state = states.idle;

counter = 0;
spd = .5;

mv_dir = (irandom_range(0,3) * 90);

my_dir = irandom_range(0,359);

moveX = 0;
moveY = 0;

if (mv_dir == 0 && place_free(x, y-(sprite_yoffset/4))) {
	moveX = 0;
	moveY = -spd;
}
else if (mv_dir == 90 && place_free(x+(sprite_xoffset/4), y)) {
	moveX = spd;
	moveY = 0;
}
else if (mv_dir == 180 && place_free(x, y+(sprite_yoffset/4))) {
	moveX = 0;
	moveY = spd;
}
else if (mv_dir == 270 && place_free(x-(sprite_xoffset/4), y)) {
	moveX = -spd;
	moveY = 0;
}
