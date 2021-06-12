if (is_grabbed()) {
	var _percent = determine_hb_intersection_percent(hold_hitbox, grabbing_hitbox)
	
	with (grabbing_hitbox) {
		with (hitbox_belongs_to) {
			if (object_index == obj_hand) {
				grip_percent = _percent;
			}
		}
	}
}