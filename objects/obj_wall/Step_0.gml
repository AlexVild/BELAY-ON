if (!init) {
	create_wall_holds();
}

if (!instance_exists(game_manager)) {
	instance_destroy();	
} else {
	#region check climber status
	with (climber) {
		if (instance_exists(other.game_manager)) {
			other.game_manager.wall_completed = is_finished;
			other.game_manager.wall_failed = has_fallen;
		} else {
			show_message("NO GAME MANAGER!");
		}
	
		if (is_finished || stamina <= 0) {
			with(other) {
				update_hold_box_positions();
			}
		}
	}
	#endregion

	#region updating hold display based on success/failure
	if (instance_exists(game_manager)) {
		if (game_manager.wall_completed || game_manager.wall_failed) {
			update_hold_box_positions();
		}
	}
	#endregion

	#region lock inactive hold boxes
	if (active_hold_box_type == HOLD_BOX_TYPE.RIGHT) {
		for (var i = 0; i < ds_list_size(right_hold_boxes); i++) {
			if (i == right_hold_index) {
				with (right_hold_boxes[| i]) {
					hold_box_locked = false;
				}
			}
		}
	} else if (active_hold_box_type == HOLD_BOX_TYPE.LEFT) {
		for (var i = 0; i < ds_list_size(left_hold_boxes); i++) {
			if (i == left_hold_index) {
				with (left_hold_boxes[| i]) {
					hold_box_locked = false;
				}
			}
		}
	}
	#endregion
}

init = true;