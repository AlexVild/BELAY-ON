/// @func set_hand_hitbox_active
/// @desc sets the hand hitbox's active states
/// @args {boolean} active
function set_hand_hitbox_active(_active){
	with (mono_hb) {
		active = _active;	
	}
	with (crimp_hb) {
		active = _active;	
	}
	with (slope_hb) {
		active = _active;	
	}
	with (jug_hb) {
		active = _active;	
	}
}