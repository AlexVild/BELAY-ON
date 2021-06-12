/// @func
/// @desc
function state_belayer_belaying(_event){
	if (_event == step) {
		if (mouse_wheel_up()) {
			slack += slack_increment;
		}
		if (mouse_wheel_down()) {
			slack -= slack_increment;	
		}
		
		with (rope_meter) {
			slack = other.slack	
		}
	} else if (_event == draw) {
		sprite_index = belaying_spr;
		draw_self();
	}
}