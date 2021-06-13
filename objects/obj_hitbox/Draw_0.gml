//if (active) {
	if (debug_mode) {
		var _alpha = 0.0;
		if (sprite_index == spr_mono_right_hb || sprite_index == spr_hand_hb_mono) {
			_alpha = 1.0;
		}
		draw_sprite_ext(sprite_index, 0, x, y, 1.0, 1.0, 1.0, c_white, _alpha);
	} else {
		draw_sprite_ext(sprite_index, 0, x, y, 1.0, 1.0, 0, c_white, 0.0);
	}
//}