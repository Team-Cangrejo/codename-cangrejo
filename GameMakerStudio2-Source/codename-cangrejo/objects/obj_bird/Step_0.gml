if moveType == "vertical"
{
    y+=moveSpeed
    
    if collision_rectangle(x-sprite_xoffset, y-sprite_yoffset, x+sprite_xoffset, y+sprite_yoffset, obj_wall, false, true)
    {
        direction += 180;
        moveSpeed = -moveSpeed
    }
}
else if moveType == "horizontal"
{
    x+=moveSpeed
    
    if collision_rectangle(x-sprite_xoffset, y-sprite_yoffset, x+sprite_xoffset, y+sprite_yoffset, obj_wall, false, true)
    {
        direction += 180;
        moveSpeed = -moveSpeed
    }
    
}