/// @description 
vw = view_get_wport(camera_get_active())
vh = view_get_hport(camera_get_active())

//vx = camera_get_view_x(camera_get_active())
vww = camera_get_view_width(camera_get_active())
draw_set_halign(fa_center)
draw_set_valign(fa_center)

if gameover == true && obj_player.image_speed == 0
{
	if !instance_exists(obj_wipe)
	{
		draw_set_color(c_black)
		draw_rectangle(vw*0.35, vh*0.40, vw*0.65, vh*0.60, false)
		draw_set_color(c_white)
		draw_text(vw*0.5, vh*0.45, gameoverText)
		draw_text(vw*0.5, vh*0.55, "Press ENTER to try again")
	}
	
	//Heads up this is the UGLIEST screen wipe ever but it's pushing midnight and I am exhausted.
	//however it does work. mostly. 
	if keyboard_check_pressed(vk_enter)
	{
		instance_create_layer(vww, obj_player.y, "Text", obj_wipe);
	}	
}
if instance_exists(obj_wipe)
{
	if ((obj_wipe.x+(obj_wipe.sprite_width/2)) <= obj_player.x)
	{
		gameover = false;
		with obj_player
		{
			x = xstart;
			y = ystart;
			playerHealth = maxHealth;
			sprite_index = spr_crab;
			image_speed = 1;
			rot = 0;
		}
		instance_activate_all();	
	}
}