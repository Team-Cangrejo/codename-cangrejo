 if kLeft
    {
        if place_free(x-(sprite_xoffset/4), y)
        {
            x-=2    
        }
    }
    if kRight
    {
        if place_free(x+(sprite_xoffset/4), y)
        {
            x+=2    
        }
    }
    
    if kUp
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
    }