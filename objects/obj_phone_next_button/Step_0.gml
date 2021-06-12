if (phone_instance.state == PhoneState.CLOSED) {
	phone_loaded = false;	
}

if (phone_loaded) {
	if (position_meeting(mouse_x, mouse_y, id) && phone_instance.state == PhoneState.OPEN) {
		global.cursor_controller.something_selected = true;
	
		if (mouse_check_button_pressed(mb_left)) {
			pad_pressed = true;
		}
	}

	if (pad_pressed) {
		if (mouse_check_button_released(mb_left)) {
			audio_play_sound(sfx_cellphone_press, 0, false);
			pad_pressed = false;
			ds_list_delete(phone_instance.message_instance.messages, 0);
		}
	}
}

if (phone_instance.state == PhoneState.OPEN && !phone_loaded) {
	phone_loaded = true;
}


