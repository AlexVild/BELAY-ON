function state_climber_ground_idle(_event){
	if (_event == step) {
		if (is_climbing) {
			truestate_switch(CLIMBER_STATES.WALL_IDLE);
		}
	} else if (_event == draw) {
		sprite_index = ground_idle_spr;
		draw_self();
	}
}