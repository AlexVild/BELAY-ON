if (!init) {
	create_wall_holds();
}

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

init = true;