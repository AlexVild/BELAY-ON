/// @func slack_management
/// @desc manages what slack does, at what thresholds, from a belayer
/// @args {int} belayer_instance
function slack_management(_belayer){
	with (_belayer) {
		slack_status = get_slack_status(slack);
		
		if (mouse_wheel_up()) {
			if (slack_status == SLACK_STATUS.GOOD) {
				slack += slack_increment_good;
			} else {
				slack += slack_increment_bad;
			}
		}
		if (mouse_wheel_down()) {
			if (slack_status == SLACK_STATUS.GOOD) {
				slack -= slack_increment_good;
			} else {
				slack -= slack_increment_bad;
			}
		}
		
		if (instance_exists(climber)) {
			with (climber) {
				slack_status = other.slack_status;	
			}
		}
		
		if (instance_exists(rope_meter)) {
			with (rope_meter) {
				slack = other.slack;
				slack_status = other.slack_status;
			}
		}
	}
}

enum SLACK_STATUS {
	VERY_LOW,
	LOW,
	LITTLE_LOW,
	GOOD,
	LITTLE_HIGH,
	HIGH,
	VERY_HIGH,
}