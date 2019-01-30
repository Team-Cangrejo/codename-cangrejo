/// @description 
x-=6;

if (x+sprite_width) < (obj_player.x-(sprite_width*0.001)) //magic numbers make the woosh work
{
	instance_destroy()
}