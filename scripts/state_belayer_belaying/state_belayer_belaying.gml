/// @func
/// @desc
function state_belayer_belaying(_event){
	if (_event == step) {
		slack_management(self);
		
		if (instance_exists(climber)) {
			if (climber.is_finished) {
				truestate_switch(BELAYER_STATES.VICTORY);
			} else if (climber.has_fallen) {
				truestate_switch(BELAYER_STATES.DEFEAT);
			}
		} else {
			instance_destroy();	
		}
	} else if (_event == draw) {
		draw_line_width(x + 10, y, climber.x, climber.y, 1);
		sprite_index = belaying_spr;
		draw_self();
	}
}