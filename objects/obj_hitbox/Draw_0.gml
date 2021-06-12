if (active) {
	if (debug_mode) {
		draw_sprite_ext(sprite_index, 0, x, y, 1.0, 1.0, 0, c_white, 1.0);
	} else {
		draw_sprite_ext(sprite_index, 0, x, y, 1.0, 1.0, 0, c_white, 0.0);
	}
}