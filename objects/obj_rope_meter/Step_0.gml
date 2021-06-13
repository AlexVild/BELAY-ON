if (!instance_exists(belayer)) {
	instance_destroy();	
} else {
	if (instance_exists(obj_rope_alarm)) {
		with (obj_rope_alarm) {
			belayer = other.belayer;
		}
	}
	
	if (instance_exists(mouse_alert)) {
		with (mouse_alert) {
			belayer = other.belayer;
			display = false;
		}
	}
	
	if (instance_exists(dial)) {
		with (dial) {
			slack = other.slack;
		}
	}
	
	switch (slack_status) {
		case SLACK_STATUS.VERY_LOW:
			mouse_alert.display = true;
			with (alarm_low_slack) {
				alarm_speed = ALARM_SPEEDS.DANGER;
			}
			with (alarm_high_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			break;
		case SLACK_STATUS.LOW:
			mouse_alert.display = false;
			with (alarm_low_slack) {
				alarm_speed = ALARM_SPEEDS.WARNING;
			}
			with (alarm_high_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			break;
		case SLACK_STATUS.LITTLE_LOW:
		case SLACK_STATUS.GOOD:
		case SLACK_STATUS.LITTLE_HIGH:
			mouse_alert.display = false;
			with (alarm_low_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			with (alarm_high_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			break;
		case SLACK_STATUS.HIGH:
			mouse_alert.display = false;
			with (alarm_low_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			with (alarm_high_slack) {
				alarm_speed = ALARM_SPEEDS.WARNING;
			}
			break;
		case SLACK_STATUS.VERY_HIGH:
			mouse_alert.display = true;
			with (alarm_low_slack) {
				alarm_speed = ALARM_SPEEDS.OFF;
			}
			with (alarm_high_slack) {
				alarm_speed = ALARM_SPEEDS.DANGER;
			}
			break;
	}
}