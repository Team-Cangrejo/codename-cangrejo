/// @description 
vw = view_get_wport(camera_get_active())
vh = view_get_hport(camera_get_active())
display_set_gui_maximize();
draw_set_halign(fa_center)
draw_set_valign(fa_center)

if gameover == true && obj_player.image_speed == 0
{
	if !instance_exists(obj_wipe)
	{
		draw_set_color(c_black)
		draw_rectangle(vw*0.20, vh*0.30, vw*0.60, vh*0.55, false)
		draw_set_color(c_white)
		draw_text(vw*0.4, vh*0.35, gameoverText)
		draw_text(vw*0.4, vh*0.45, "Press ENTER to try again")
	}
	
	//Heads up this is the UGLIEST screen wipe ever but it's pushing midnight and I am exhausted.
	//however it does work. mostly. 
	if keyboard_check_pressed(vk_enter)
	{
		instance_create_layer(vw, obj_player.y, "Text", obj_wipe);
	}	
}
if instance_exists(obj_wipe)
{
	if obj_wipe.x <= obj_player.x
	{
		with obj_player
		{
			x = xstart;
			y = ystart;
			playerHealth = maxHealth;
			sprite_index = spr_crab;
			image_speed = 1;
			rot = 0;
		}
		with obj_sandpile 
		{
			instance_destroy();	
		}
		instance_activate_all();	
		with obj_sandcastle
		{
			integrity = 3;	
		} //fun resets
		gameover = false;	
	}
}

var sandcastles = instance_number(obj_sandcastle)
var trash = instance_number(obj_trash)

if (room != rm_main_menu) && (room != rm_controls) &&(room != rm_credits) 
{
	if sandcastles <= 0 && trash <= 0
	{
			roomFinished = true;
			draw_set_color(c_black)
			draw_rectangle(vw*0.20, vh*0.30, vw*0.60, vh*0.55, false)
			draw_set_color(c_white)
			if room != room_last
			{
				draw_text(vw*0.4, vh*0.35, "The beach is clean!")
				draw_text(vw*0.4, vh*0.40, "You took " + string(floor(roomMinutes)) + " minutes and " + string(floor(roomSeconds)) + " seconds.")
				draw_text(vw*0.4, vh*0.45, "Press ENTER to continue")
				if keyboard_check_pressed(vk_enter)
				{
					totalTime+=roomTime;
					room_goto_next();
				}	
			}
			else //Purely hypothetical; haven't tested this yet.
			{
				draw_text(vw*0.4, vh*0.35, "You've cleaned the entire beach!")
				draw_text(vw*0.4, vh*0.40, "You took " + string(floor(gameMinutes)) + " minutes and " + string(floor(gameSeconds)) + " seconds.")
				draw_text(vw*0.4, vh*0.45, "Press ENTER to continue")
				if keyboard_check_pressed(vk_enter)
				{
					game_restart();
				}	
			}
			
	}
}

draw_set_halign(fa_left)
draw_set_valign(fa_top)


//Draw music and sound noodles
//if room == rm_main_menu || room == rm_controls || room == rm_credits
//{
	switch (haveMusic)
	{
		case true:
			draw_sprite_ext(spr_musicIcon, 0, vw*0.05, vh*0.95, 2, 2, 0, c_white, 1)
			if point_in_circle(mouse_x, mouse_y, vw*0.05, vh*0.95, 32)
			{
				if mouse_check_button_pressed(mb_left)
				{
					haveMusic = false;	
				}
			}
		break;
		case false:
			draw_sprite_ext(spr_musicIcon, 1, vw*0.05, vh*0.95, 2, 2, 0, c_white, 1)
			if point_in_circle(mouse_x,mouse_y, vw*0.05, vh*0.95, 32)
			{
				if mouse_check_button_pressed(mb_left)
				{
					haveMusic = true;	
				}
			}
		break;
	}

	switch (haveSound)
	{
		case true:
			draw_sprite_ext(spr_soundIcon, 0, vw*0.12, vh*0.95, 2, 2, 0, c_white, 1)
			if point_in_circle(mouse_x, mouse_y, vw*0.12, vh*0.95, 32)
			{
				if mouse_check_button_pressed(mb_left)
				{
					haveSound = false;	
				}
			}
		break;
		case false:
			draw_sprite_ext(spr_soundIcon, 1, vw*0.12, vh*0.95, 2, 2, 0, c_white, 1)
			if point_in_circle(mouse_x,mouse_y, vw*0.12, vh*0.95, 32)
			{
				if mouse_check_button_pressed(mb_left)
				{
					haveSound = true;	
				}
			}
		break;
	}
//}
/*else
{
	switch (haveMusic)
	{
		case true:
			draw_sprite_ext(spr_musicIcon, 0, vw*0.04, vh*0.75, 2, 2, 0, c_white, 1)
			if point_in_circle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), vw*0.04, vh*0.75, 32)
			{
				if mouse_check_button_pressed(mb_left)
				{
					haveMusic = false;	
				}
			}
		break;
		case false:
			draw_sprite_ext(spr_musicIcon, 1, vw*0.04, vh*0.75, 2, 2, 0, c_white, 1)
			if point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0), vw*0.04, vh*0.75, 32)
			{
				if mouse_check_button_pressed(mb_left)
				{
					haveMusic = true;	
				}
			}
		break;
	}

	switch (haveSound)
	{
		case true:
			draw_sprite_ext(spr_soundIcon, 0, vw*0.10, vh*0.75, 2, 2, 0, c_white, 1)
			if point_in_circle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), vw*0.10, vh*0.75, 32)
			{
				if mouse_check_button_pressed(mb_left)
				{
					haveSound = false;	
				}
			}
		break;
		case false:
			draw_sprite_ext(spr_soundIcon, 1, vw*0.10, vh*0.75, 2, 2, 0, c_white, 1)
			if point_in_circle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0), vw*0.10, vh*0.75, 32)
			{
				if mouse_check_button_pressed(mb_left)
				{
					haveSound = true;	
				}
			}
		break;
	}	
	
	
}


