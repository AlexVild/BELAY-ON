if (instance_exists(belongs_to)) {
	if (is_grabbed() && !belongs_to.hold_box_locked) {
		var _percent = determine_hb_intersection_percent(hold_hitbox, grabbing_hitbox);
	
		with (grabbing_hitbox.hitbox_belongs_to) { // Update Hand
			grip_percent = _percent;
			hand_grab_hold(other.type);
		}
		with (belongs_to) { // Update wall
			if (!hold_box_locked) {
				var _box_type = hold_box_type;
				hold_box_locked = true;
				with (wall_instance) {
					holds_climbed++;
					if (_box_type == HOLD_BOX_TYPE.RIGHT) {
						right_hold_index++;
						active_hold_box_type = HOLD_BOX_TYPE.LEFT;
					} else {
						left_hold_index++;
						active_hold_box_type = HOLD_BOX_TYPE.RIGHT;
					}
					update_hold_box_positions();
				}
			}
		}
	}
} else {
	instance_destroy();	
}