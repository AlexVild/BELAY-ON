/// @func draw_screen_rectangle
/// @desc draws a rectangle over the full screen
/// @args {real} *color
/// @args {int} *alpha
function draw_screen_rectangle() {

	var _color = c_black;
	var _alpha = 1;

	if (argument_count > 0) {
		_color = argument[0];	
	}
	if (argument_count > 1) {
		_alpha = argument[1];	
	}

	draw_set_alpha(_alpha);
	draw_set_color(_color);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_color(-1);
	draw_set_alpha(1);



}
