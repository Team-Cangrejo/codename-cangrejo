/// @description Movement
// You can write your code in this editor
scr_playerButtons();
scr_playerMovement();

if gameover != true //check for gameover state, then change sprite index
{
	sprite_index = spr_crab	
}
else
{
	sprite_index = spr_crabdeath	
	if floor(image_index) == floor(image_number)-1 //magic trickery
	{
		image_speed = 0; //Stop looping anim when dead.	
	}
}