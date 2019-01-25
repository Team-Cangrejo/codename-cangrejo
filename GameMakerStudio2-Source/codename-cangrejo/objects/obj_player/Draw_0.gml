var _interval = 8;

if (alarm[0] % _interval) <= _interval/2 {
	draw_sprite_ext(spr_crab, image_index, x, y, 1, 1, rot, image_blend, image_alpha);
}