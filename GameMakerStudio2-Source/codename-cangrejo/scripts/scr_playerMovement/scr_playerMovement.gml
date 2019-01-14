	if kLeft
    {
        if (place_free(x-(sprite_xoffset/4), y) && image_angle == 0)
        {
            x-=2    
        }
		else if (place_free(x+(sprite_xoffset/4), y) && image_angle == 180)
		{
			x+=2
		}
		else if (place_free(x, y+(sprite_yoffset/4)) && image_angle == 90)
		{
			y+=2
		}
		else if (place_free(x, y-(sprite_yoffset/4)) && image_angle == 270)
		{
			y-=2
		}
    }
    if kRight
    {
        if (place_free(x+(sprite_xoffset/4), y) && image_angle == 0)
        {
            x+=2    
        }
		else if (place_free(x-(sprite_xoffset/4), y) && image_angle == 180)
		{
			x-=2
		}
		else if (place_free(x, y-(sprite_yoffset/4)) && image_angle == 90)
		{
			y-=2
		}
		else if (place_free(x, y+(sprite_yoffset/4)) && image_angle == 270)
		{
			y+=2
		}
    }
/*    if kUp
    {
        if place_free(x, y-(sprite_yoffset/4))
        {
            y-=2    
        }
    }
    if kDown
    {
        if place_free(x, y+(sprite_yoffset/4))
        {
            y+=2    
        }
    } */
	if (rotateR)
	{
    if image_angle == 0
    {
         image_angle = 270
    }
    else if image_angle == 270
    {
       image_angle = 180
    }
	else if image_angle == 180
	{
		image_angle = 90
	}
	else if image_angle == 90
	{
		image_angle = 0
	}
	}
	if (rotateL)
	{
    if image_angle == 0
    {
         image_angle = 90
    }
    else if image_angle == 90
    {
       image_angle = 180
    }
	else if image_angle == 180
	{
		image_angle = 270
	}
	else if image_angle == 270
	{
		image_angle = 0
	}
	}