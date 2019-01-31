/// @description 
//gui garbage
vw = view_get_wport(view_camera[0])
vh = view_get_hport(view_camera[0])
display_set_gui_maximize();


//health fun

maxH = obj_player.maxHealth/3 //determines how many hearts are shown
myH = obj_player.playerHealth //variable for ease of use. 

for (var i = 0; i < clamp(maxH, 0, 3); i++) //fun controls so we don't overdraw hearts and end up with buff crabs
{
    draw_sprite_ext(spr_heart, clamp(myH, 0, 3), (vw*0.05)+(i*64), vh*0.05, 2, 2, 0, c_white, 1) //draws three hearts
    myH -= 3 //controls how many sections per heart. I think. 
}


/*/Fun debug stuff
if keyboard_check_pressed(ord("P")) //practice life magic
{
    if obj_player.playerHealth != obj_player.maxHealth
    {
        obj_player.playerHealth += 1
    }
}
if keyboard_check_pressed(ord("O")) //kill your crabs
{
    if obj_player.playerHealth > 0
    {
        obj_player.playerHealth -= 1    
    }
}

//draw_text(64, 64, string(obj_player.playerHealth) + " / " + string(obj_player.maxHealth)); //draw health to make sure it works
*/
if obj_player.playerHealth <= 0 {
	//room_restart();
	gameover = true;
}
