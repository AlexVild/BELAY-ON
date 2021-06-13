if (instance_exists(meter.belayer)) {
	if (meter.belayer.belay_on) {
		draw_sprite_ext(sprite_index, 0, x, y, 0.75, 0.75, -.9 * reading, c_white, 1.0);
	}
}