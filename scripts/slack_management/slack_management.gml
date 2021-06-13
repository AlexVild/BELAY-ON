/// @func slack_management
/// @desc manages what slack does, at what thresholds, from a belayer
/// @args {int} belayer_instance
function slack_management(_belayer){
	with (_belayer) {
		slack_status = get_slack_status(slack);
		
		if (mouse_wheel_up()) {
			slack += slack_increment;
		}
		if (mouse_wheel_down()) {
			slack -= slack_increment;
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
	GOOD,
	HIGH,
	VERY_HIGH,
}