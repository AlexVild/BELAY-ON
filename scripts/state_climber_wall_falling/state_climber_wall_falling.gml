function state_climber_wall_falling(_event){
	if (_event == step) {
		if (state_new) {
			has_fallen = true;
		}
	} else if (_event == draw) {
		sprite_index = wall_falling_spr;
		
		draw_self();
	}
}