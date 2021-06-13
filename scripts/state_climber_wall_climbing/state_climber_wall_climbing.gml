/// @func
/// @desc
function state_climber_wall_climbing(_event){
	if (_event == step) {
		var _drain = base_stamina_degrade_rate + power(.75 * (1 - grip_percent), 2);
		stamina -= _drain;
		
		if (is_finished) {
			truestate_switch(CLIMBER_STATES.WALL_DONE);
		}
		if (stamina <= 0) {
			truestate_switch(CLIMBER_STATES.WALL_FALLING);	
		}
	} else if (_event == draw) {
		sprite_index = wall_climbing_spr;
		draw_self();
	}
}