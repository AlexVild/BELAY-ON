event_inherited();

if (hold_box_parent.hold_box_locked) {
	disabled = true;
} else if (state == HAND_STATES.GRABBED) {
	disabled = true;
} else {
	disabled = false;
	
	if (hold_hb_grabbing && instance_exists(hold_hb_grabbing)) {
		if (!instance_place(x, y, hold_hb_grabbing)) {
			hold_hb_grabbing = noone;
			grip_percent = 0.0;
		}
	}
}

if (!instance_exists(hold_box_parent)) {
	instance_destroy();	
}