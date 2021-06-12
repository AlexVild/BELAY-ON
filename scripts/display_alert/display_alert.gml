/// @func display_alert
/// @desc creates and displays a new alert on the screen
/// @args {ALERT} alert - the alert to display
/// @args {real} x
/// @args {real} y

enum ALERT {
	PERFECT,
	GOOD,
	OKAY,
	BAD,
	UHOH,
}

function display_alert(_alert_type, _x, _y){
	var _alert;
	switch(_alert_type) {
		case ALERT.PERFECT:
			_alert = new Alert("PERFECT!!!", c_yellow, c_blue, -2, -2);
			break;
		case ALERT.GOOD:
			_alert = new Alert("GOOD!", c_green, c_lime, -1, -1);
			break;
		case ALERT.OKAY:
			_alert = new Alert("OKAY", c_yellow, c_orange, 0, 1);
			break;
		case ALERT.BAD:
			_alert = new Alert("BAD", c_orange, c_red, 1, -1);
			break;
		case ALERT.UHOH:
			_alert = new Alert("UH-OH!", c_red, c_white, 2, -2);
			break;
	}
	
	_alert.create(_x, _y);
}