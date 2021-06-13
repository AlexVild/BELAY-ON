if (instance_exists(belayer) && belayer.belay_on) {
	switch (alarm_speed) {
		case ALARM_SPEEDS.OFF: 
			image_index = 0;
			image_speed = 0;
			break;
		case ALARM_SPEEDS.WARNING:
			image_speed = warning_speed;
			break;
		case ALARM_SPEEDS.DANGER:
			image_speed = danger_speed;
			break;
	}

	draw_self();
}