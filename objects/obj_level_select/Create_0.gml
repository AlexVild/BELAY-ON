menu_options = ds_grid_create(4, 5);
unselected_color = c_white;
selected_color = c_yellow;

selected_option = -1;

enum MENU_OPTION {
	EASY,
	MEDIUM,
	HARD,
	FULL_SCREEN,
	EXIT
}

enum MENU_OPTION_ROW {
	TEXT,
	X_LOC,
	Y_LOC,
	ACTION,
	PARAMS
}

enum DIFFICULTY {
	EASY,
	MEDIUM,
	HARD,
}

go_to_wall = function(_diff) {
	var _wall_to_create;
	switch(_diff) {
		case DIFFICULTY.EASY:
			_wall_to_create = obj_wall_easy;
			break;
		case DIFFICULTY.MEDIUM:
			_wall_to_create = obj_wall_easy;
			break;
		case DIFFICULTY.HARD:
			_wall_to_create = obj_wall_easy;
			break;
	}
	
	room_goto(rm_wall);
	instance_create_depth(x, y, 0, _wall_to_create);
}

ds_grid_add(menu_options, MENU_OPTION.EASY, MENU_OPTION_ROW.TEXT, "EASY");
ds_grid_add(menu_options, MENU_OPTION.EASY, MENU_OPTION_ROW.X_LOC, 64);
ds_grid_add(menu_options, MENU_OPTION.EASY, MENU_OPTION_ROW.Y_LOC, 80);
ds_grid_add(menu_options, MENU_OPTION.EASY, MENU_OPTION_ROW.ACTION, go_to_wall);
ds_grid_add(menu_options, MENU_OPTION.EASY, MENU_OPTION_ROW.PARAMS, DIFFICULTY.EASY);