if (instance_exists(meter.belayer)) {
	if (meter.belayer.belay_on) {
		draw_sprite_ext(sprite_index, 0, x, y, 1.0, 1.0, -90, c_white, 1.0);
	}
}