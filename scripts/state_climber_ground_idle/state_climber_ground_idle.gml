/// @func
/// @desc
function state_climber_ground_idle(_event){
	if (_event == step) {
		if (is_climbing) {
			truestate_switch(CLIMBER_STATES.WALL_IDLE);	
		}
	} else if (_event == draw) {
		draw_self();
	}
}