/// @func determine_hand_sprite
/// @desc determines which hand sprite to show for a given state of hold box
function determine_hand_sprite(){
	if (instance_exists(hold_box_parent) && instance_exists(hold_box_parent.hold_to_display)) {
		var _hold_type = hold_box_parent.hold_to_display.type;
		if (disabled) {
			if (state == HAND_STATES.SEEKING) {
				sprite_index = spr_right_hand_open;
			} else {
				switch (_hold_type) {
					case HOLD_TYPE.MONO:
						sprite_index = spr_right_hand_mono;
						break;
					case HOLD_TYPE.CRIMP:
						sprite_index = spr_right_hand_crimp;
						break;
					case HOLD_TYPE.EDGE:
						sprite_index = spr_right_hand_edge;
						break;
					case HOLD_TYPE.JUG:
						sprite_index = spr_right_hand_jug;
						break;
				}
			}
		} else {
			switch (_hold_type) {
				case HOLD_TYPE.MONO:
					sprite_index = spr_right_hand_mono_open;
					break;
				case HOLD_TYPE.CRIMP:
					sprite_index = spr_right_hand_crimp_open;
					break;
				case HOLD_TYPE.EDGE:
					sprite_index = spr_right_hand_edge_open;
					break;
				case HOLD_TYPE.JUG:
					sprite_index = spr_right_hand_jug_open;
					break;
			}
		}
	}
}