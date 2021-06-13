if (!instance_exists(belayer)) {
	instance_destroy();	
} else {
	if (instance_exists(dial)) {
		with (dial) {
			slack = other.slack;
		}
	}
	
	switch (slack_status) {
		case SLACK_STATUS.VERY_LOW:
			with (alarm_low_slack) {
				alarm_speed = ALARM_SPEEDS.DANGER;
			}
			with (alarm_high_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			break;
		case SLACK_STATUS.LOW:
			with (alarm_low_slack) {
				alarm_speed = ALARM_SPEEDS.WARNING;
			}
			with (alarm_high_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			break;
		case SLACK_STATUS.GOOD:
			with (alarm_low_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			with (alarm_high_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			break;
		case SLACK_STATUS.HIGH:
			with (alarm_low_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			with (alarm_high_slack) {
				alarm_speed = ALARM_SPEEDS.WARNING;
			}
			break;
		case SLACK_STATUS.VERY_HIGH:
			with (alarm_low_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			with (alarm_high_slack) {
				alarm_speed = ALARM_SPEEDS.DANGER;
			}
			break;
	}
}