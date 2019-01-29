if gameover != true
{
if moveType == "vertical"
{
    y+=moveSpeed
    
    if collision_rectangle(x-sprite_xoffset, y-sprite_yoffset, x+sprite_xoffset, y+sprite_yoffset, obj_wall, false, true)
    {
        direction += 180;
        moveSpeed = -moveSpeed
		if image_xscale == 1  {
			image_xscale = -1
		}
		else if image_xscale == -1 {
			image_xscale = 1
		}
    }
}
else if moveType == "horizontal"
{
    x+=moveSpeed
    
    if collision_rectangle(x-sprite_xoffset, y-sprite_yoffset, x+sprite_xoffset, y+sprite_yoffset, obj_wall, false, true)
    {
        direction += 180;
        moveSpeed = -moveSpeed;
		if image_xscale == 1  {
			image_xscale = -1
		}
		else if image_xscale == -1 {
			image_xscale = 1
		}
    }
    
}
}
else
{
	instance_deactivate_object(self);	
}