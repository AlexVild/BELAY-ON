var _cursor_list = global.cursor_controller.hovered_objects;
var _cursor_list_pos = ds_list_find_index(_cursor_list, self);
if (_cursor_list_pos != -1) {
	ds_list_delete(_cursor_list, _cursor_list_pos);
}