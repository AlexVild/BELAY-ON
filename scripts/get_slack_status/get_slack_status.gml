/// @func get_slack_status
/// @desc returns a SLACK_STATUS from a given slack value
/// @args {int} slack - the amount of slack
/// @returns {int} corresponding SLACK_STATUS enum
function get_slack_status(_slack){
	if (_slack >= very_high_slack_threshold) {
		return SLACK_STATUS.VERY_HIGH;
	} else if (_slack < very_high_slack_threshold && _slack >= high_slack_threshold) {
		return SLACK_STATUS.HIGH;
	} else if (_slack < high_slack_threshold && _slack >= low_slack_threshold) {
		return SLACK_STATUS.GOOD;
	} else if (_slack < low_slack_threshold && _slack >= very_low_slack_threshold) {
		return SLACK_STATUS.LOW;
	} else if (_slack < very_low_slack_threshold) {
		return SLACK_STATUS.VERY_LOW;
	}
}