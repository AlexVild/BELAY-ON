function state_climber_wall_done(_event){
	if (_event == step) {
		if (state_new) {
			y = target_point_y;
			is_climbing = false;
		}
	} else if (_event == draw) {
		sprite_index = wall_done_spr;
		draw_self();
	}
}