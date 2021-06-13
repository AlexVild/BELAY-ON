draw_set_font(fnt_game);
draw_set_valign(fa_bottom);

selected_option = -1;

for (var option = 0; option < ds_grid_width(menu_options); option++) {
	var _text = menu_options[# option, MENU_OPTION_ROW.TEXT];
	var _x = menu_options[# option, MENU_OPTION_ROW.X_LOC];
	var _y = menu_options[# option, MENU_OPTION_ROW.Y_LOC];
	var _action = menu_options[# option, MENU_OPTION_ROW.ACTION];
	var _params = menu_options[# option, MENU_OPTION_ROW.PARAMS];
	
	var _text_right_x_bound = _x + string_length(_text);
	var _text_top_bound = _y - string_height(_text);
	
	if ((mouse_x > _x && mouse_x < _text_right_x_bound) && (mouse_y < _y && mouse_y > _text_top_bound)) {
		selected_option = option;
	}
	
	if (selected_option == option) {
		draw_set_color(selected_color);
	} else {
		draw_set_color(unselected_color);
	}
	draw_text(_x, _y, _text);
	draw_set_color(-1);
}

draw_set_valign(-1);
draw_set_font(-1);