if kLeft {
    if (place_free(x-(sprite_xoffset/4), y) && rot == 0) {
        x-=spd    
    }
	else if (place_free(x+(sprite_xoffset/4), y) && (rot == 180 || rot == -180)) {
		x+=spd
	}
	else if (place_free(x, y+(sprite_yoffset/4)) && (rot == 90 || rot == -270)) {
		y+=spd
	}
	else if (place_free(x, y-(sprite_yoffset/4)) && (rot == 270 || rot == -90)) {
		y-=spd
	}
}
    if kRight
    {
        if (place_free(x+(sprite_xoffset/4), y) && rot == 0)
        {
            x+=spd   
        }
		else if (place_free(x-(sprite_xoffset/4), y) && (rot == 180 || rot == -180))
		{
			x-=spd
		}
		else if (place_free(x, y-(sprite_yoffset/4)) && (rot == 90 || rot == -270))
		{
			y-=spd
		}
		else if (place_free(x, y+(sprite_yoffset/4)) && (rot == 270 || rot == -90))
		{
			y+=spd
		}
    }
	
if rotateR {
    rot -= 90
	show_debug_message(string(rot))
}

if rotateL {
	rot += 90;
	show_debug_message(string(rot))
}

if rot == 360 {
	rot = 0
}

if rot == -360 {
	rot = 0
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
