if active == true {
	if alarm[0] >= room_speed*1 {
		shrink = clamp(shrink, 0, 1);
		shrink += .02
	draw_sprite_ext(spr_swirly,image_index, x, y, shrink, shrink, rot, image_blend, image_alpha);
	}
	else if alarm[0] <= room_speed*1 {
		shrink = clamp(shrink, 0, 1);
		shrink -= .02
		draw_sprite_ext(spr_swirly,image_index, x, y, shrink, shrink, rot, image_blend, image_alpha)
	}
}