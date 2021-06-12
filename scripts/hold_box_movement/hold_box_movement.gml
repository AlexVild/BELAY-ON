/// @func hold_box_movement
/// @desc code responsible for moving hold boxes around
function hold_box_movement(){
	var _has_moved = false;
	if (y != y_destination) {
		is_moving = true;
		var _vspd = vspd;
		y += _vspd;
		with (child_hand_instance) {
			y += _vspd;
		}
		with (hold_to_display) {
			y += _vspd;
		}
		_has_moved = true;
	}
	
	if (x != x_destination) {
		is_moving = true;
		var _hspd = hspd;
		x += _hspd;
		with (child_hand_instance) {
			x += _hspd;
		}
		with (hold_to_display) {
			x += _hspd;
		}
		_has_moved = true;
	}
	
	is_moving = _has_moved;
}