/// @func display_hold_placement_alert
/// @desc Displays an alert based on how good your hold placement was
/// @args {real} hold_percent
/// @args {int} x
/// @args {int} y
function display_hold_placement_alert(_percent, _x, _y){
	var _alert_to_show;
	
	if (_percent >= perfect_threshold) {
		_alert_to_show = ALERT.PERFECT;
	} else if (_percent < perfect_threshold && _percent >= good_threshold) {
		_alert_to_show = ALERT.GOOD;
	} else if (_percent < good_threshold && _percent >= okay_threshold) {
		_alert_to_show = ALERT.OKAY;
	} else if (_percent < okay_threshold && _percent >= bad_threshold) {
		_alert_to_show = ALERT.BAD;
	} else if (_percent < bad_threshold) {
		_alert_to_show = ALERT.UHOH;
	}

	display_alert(_alert_to_show, _x, _y);
}