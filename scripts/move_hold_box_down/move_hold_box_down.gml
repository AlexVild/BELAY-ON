/// @func move_hold_box_down
/// @desc moves a hold box down, with its child instances in tow
function move_hold_box_down(){
	var _vspd = vspd;
	y += _vspd;
	with (child_hand_instance) {
		y += _vspd;
	}
	with (hold_to_display) {
		y += _vspd;
	}
}