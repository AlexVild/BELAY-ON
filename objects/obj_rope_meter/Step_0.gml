if (!instance_exists(belayer)) {
	instance_destroy();	
} else {
	if (belayer.belay_on) {
		show_debug_message(slack);
	}
	if (instance_exists(dial)) {
		with (dial) {
			slack = other.slack;
		}
	}
}