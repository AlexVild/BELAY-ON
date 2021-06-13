//if (active) {
	if (debug_mode) {
		var _alpha = 0.0;
		if (sprite_index == spr_mono_right_hb || sprite_index == spr_hand_hb_mono) {
			_alpha = 1.0;	
			if (sprite_index == spr_mono_right_hb) {
				show_debug_message("MONO X BOUNDS: " + string(bbox_left) + ", " + string(bbox_right));
			} else if (sprite_index == spr_hand_hb_mono) {
				show_debug_message("HAND X BOUNDS: " + string(bbox_left) + ", " + string(bbox_right));
			}
		}
		draw_sprite_ext(sprite_index, 0, x, y, face_dir, 1.0, 1.0, c_white, _alpha);
	} else {
		draw_sprite_ext(sprite_index, 0, x, y, face_dir, 1.0, 0, c_white, 0.0);
	}
//}