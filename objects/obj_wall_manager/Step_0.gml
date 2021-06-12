if (keyboard_check_pressed(vk_f1)) {
	instance_destroy();
}

if (!is_displaying) {
	if (wall_failed) {
		is_displaying = true;
		display_alert(ALERT.FAILURE, room_width / 2, room_height / 2);
	}

	if (wall_completed) {
		is_displaying = true;
		display_alert(ALERT.BIG_SUCCESS, room_width / 2, room_height / 2);
	}
}