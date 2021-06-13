/// @func
/// @desc
function state_climber_wall_idle(_event){
	if (_event == step) {
		if (state_new) {
			with (belongs_to.game_manager.timer) {
				start = true;
			}
		}
		
		var _drain = base_stamina_degrade_rate + power(.75 * (1 - grip_percent), 2);
		stamina -= _drain;
		
		if (y != target_point_y) {
			if (y - climbing_spd < target_point_y) {
				y = target_point_y;	
			} else {
				y -= climbing_spd;
			}
		}
		
		if (is_finished) {
			truestate_switch(CLIMBER_STATES.WALL_DONE);
		}
		if (stamina <= 0) {
			truestate_switch(CLIMBER_STATES.WALL_FALLING);	
		}
	} else if (_event == draw) {
		if (slack_status == SLACK_STATUS.LOW || SLACK_STATUS.VERY_LOW) {
			sprite_index = wall_idle_spr_short;
		} else if (slack_status == SLACK_STATUS.HIGH|| SLACK_STATUS.VERY_HIGH) {
			sprite_index = wall_idle_spr_nervous;
		} else {
			sprite_index = wall_idle_spr;
		}
		draw_self();
	}
}