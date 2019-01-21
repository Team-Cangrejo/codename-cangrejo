statesArray[3] = noone;

statesArray[0] = "idle";
statesArray[1] = "wander";
statesArray[2] = "alert";
statesArray[3] = "attack";

state = statesArray[0];

counter = 0;
spd = .5;

mv_dir = (irandom_range(0,3) * 90);

moveX = 0;
moveY = 0;