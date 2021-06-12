function state_climber_wall_done(_event){
	if (_event == step) {
		if (state_new) {
			is_climbing = false;
		}
	} else if (_event == draw) {
		draw_self();
	}
}