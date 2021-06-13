for (var option = 0; option < ds_grid_width(menu_options); i ++) {
	var _text = ds_grid[# option, MENU_OPTION_ROW.TEXT];
	var _loc = ds_grid[# option, MENU_OPTION_ROW.LOCATION];
	var _action = ds_grid[# option, MENU_OPTION_ROW.ACTION];
	var _params = ds_grid[# option, MENU_OPTION_ROW.PARAMS];
	
	draw_text(_loc[X], _loc[Y], _text);
}