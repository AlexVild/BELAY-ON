function state_climber_wall_falling(_event){
	if (_event == step) {
		if (state_new) {
			falling_point_x = x;
			falling_point_y = y;
			if (instance_exists(obj_belayer)) {
				state_var[0] = y + normal_fall_distance + (belayer.slack div 5);
			} else {
				state_var[0] = y + normal_fall_distance;
			}
		}
		y += 1;
		
		if (y == state_var[0]) {
			truestate_switch(CLIMBER_STATES.FALLEN);	
		}
		
	} else if (_event == draw) {
		sprite_index = wall_falling_spr;
		draw_line_width(falling_point_x, falling_point_y, x, y, 1);
		
		draw_self();
	}
}