if (!is_clicked) {
	is_hovered = false;
	is_clicked = false;
	clicked_x = -1; // the location the clickable was clicked on
	clicked_y = -1;
	drag_offset_x = -1;
	drag_offset_y = -1;

	var _cursor_list = global.cursor_controller.hovered_objects;
	var _cursor_list_pos = ds_list_find_index(_cursor_list, self);
	if (_cursor_list_pos != -1) {
		ds_list_delete(_cursor_list, _cursor_list_pos);
	}
}