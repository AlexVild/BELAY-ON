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
	BIG_SUCCESS,
	FAILURE,
	NEED_SLACK,
}

function display_alert(_alert_type, _x, _y){
	var _alert;
	switch(_alert_type) {
		case ALERT.PERFECT:
			_alert = new Alert("PERFECT!!!", c_yellow, c_blue, .15, -1);
			break;
		case ALERT.GOOD:
			_alert = new Alert("GOOD!", c_green, c_lime, .25, -.75);
			break;
		case ALERT.OKAY:
			_alert = new Alert("OKAY", c_yellow, c_orange, .6, -.2);
			break;
		case ALERT.BAD:
			_alert = new Alert("BAD", c_orange, c_red, .4, .2);
			break;
		case ALERT.UHOH:
			_alert = new Alert("UH-OH!", c_red, c_white, 1, 2);
			break;
		case ALERT.BIG_SUCCESS:
			_alert = new Alert("WOW! BIG GOOD!!!", c_white, c_teal, 0, -.5);
			break;
		case ALERT.FAILURE:
			_alert = new Alert("YOU HAVE FAILED THE CLIMB", c_red, c_white, 0, .5);
			break;
		case ALERT.NEED_SLACK:
			_alert = new Alert("NEED SLACK", c_red, c_red, 0, 0.2);
			break;
	}
	
	_alert.create(_x, _y);
}