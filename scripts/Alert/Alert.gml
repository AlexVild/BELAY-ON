/// @func Alert
/// @desc Creates a new alert
/// @args {string} Text
/// @args {real} color_1
/// @args {real} color_2
/// @args {real} hspd
/// @args {real} vspd
function Alert(_text, _c1, _c2, _hspd, _vspd) constructor{
	text = _text;
	c1 = _c1;
	c2 = _c2;
	hspd = _hspd;
	vspd = _vspd;
	
	/// @func create
	/// @desc creates a new alert with the given params
	/// @args {int} x
	/// @desc {int} y
	create = function(_x, _y) {
		with(instance_create_layer(_x, _y, "Alerts", obj_alert)) {
			text = other.text;
			c1 = other.c1;
			c2 = other.c2;
			hspd = other.hspd;
			vspd = other.vspd;
		}
	}
}
