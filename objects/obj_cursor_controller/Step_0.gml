if (ds_list_size(hovered_objects) > 0) {
	something_selected = true;	
}

if (something_selected) {
	window_set_cursor(selection_cursor);
} else {
	window_set_cursor(cr_default);
}
if (hide_cursor && !global.game_over) {
	window_set_cursor(cr_none);	
}

something_selected = false;
hide_cursor = false;