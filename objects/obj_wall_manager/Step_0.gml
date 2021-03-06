if (keyboard_check_pressed(vk_escape)) {
	room_goto(rm_title)
}

if (!is_displaying) {
	if (wall_failed) {
		audio_play_sound(bgm_fail, 0, false);
		is_displaying = true;
		display_alert(ALERT.FAILURE, room_width / 2, room_height / 2);
		with (obj_button) {
			button_hidden = false;
		}
	}

	if (wall_completed) {
		audio_play_sound(bgm_fanfare, 0, false);
		audio_play_sound(victory, 0, false);
		is_displaying = true;
		display_alert(ALERT.BIG_SUCCESS, room_width / 2, room_height / 2);
		with (obj_button) {
			button_hidden = false;	
		}
		with (timer) {
			start = false;
			display = true;
		}
	}
}