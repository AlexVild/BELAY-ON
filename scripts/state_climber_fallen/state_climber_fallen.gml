function state_climber_fallen(_event){
	if (_event == step) {
		if (state_new) {
			is_climbing = false;
			state_var[0] = x; // starting point
			has_fallen = true;
		}
		
		if (abs(x - state_var[0]) > swing_distance) {
			swing_spd *= -1;	
		}
		x += swing_spd;
		
	} else if (_event == draw) {
		sprite_index = fallen_spr;
		draw_self();
		draw_line_width(falling_point_x, falling_point_y, x, y, 1);
	}
}