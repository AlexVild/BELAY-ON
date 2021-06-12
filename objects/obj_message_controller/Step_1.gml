if (total_messages - message_difficulty_num == 0 && total_messages > 0) {
	message_difficulty_num += (message_difficulty_num * message_difficulty);
	message_difficulty++;
	message_seconds--;
	
	message_seconds = clamp(message_seconds, 3, 7);
	message_interval = 60 * message_seconds;
	if (debug_mode) {
		show_debug_message("SECONDS: " + string(message_interval));	
	}
	message_variance = 60 * irandom_range(-1, message_seconds);
}