if (instance_exists(belongs_to)) {
	if (is_grabbed() && !belongs_to.hold_box_locked) {
		grip_hold(id);
	}
} else {
	instance_destroy();	
}