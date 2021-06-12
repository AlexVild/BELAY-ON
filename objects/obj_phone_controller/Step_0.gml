if (previous_selection != is_selected && previous_selection = true) {
	ds_list_delete(message_instance.messages, 0);
}

if (previous_selection != is_selected) {
	audio_play_sound(sfx_phone_open, 0, false)
}

if (is_selected) {
	state = PhoneState.OPEN;
} else {
	state = PhoneState.CLOSED;
}

previous_selection = is_selected;