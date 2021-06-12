/// @func
/// @desc
function state_belayer_idle(_event){
	if (_event == step) {
		if (instance_exists(climber)) {
			if (climber.is_climbing) {
				belay_on = true;	
			}
		}
		
		if (belay_on) {
			truestate_switch(BELAYER_STATES.BELAYING);	
		}
	} else if (_event == draw) {
		sprite_index = idle_spr;
		draw_self();
	}
}