var _interval = 16;

if (alarm[0] % _interval) <= _interval/2 {
	gpu_set_fog(false, c_white, 0, 1)
}
else {
	gpu_set_fog(true, c_white, 0, 1)
}


draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rot, image_blend, image_alpha);

gpu_set_fog(false, c_white, 0, 1)