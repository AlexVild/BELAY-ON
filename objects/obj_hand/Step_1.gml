if (is_clicked) {
	var _dest_x = mouse_x + drag_offset_x;
	var _dest_y = mouse_y + drag_offset_y;
	
	if (_dest_x < hold_box_parent.bbox_right && _dest_x > hold_box_parent.bbox_left) {
		x = _dest_x;
	}
	if (_dest_y < hold_box_parent.bbox_bottom && _dest_y > hold_box_parent.bbox_top) {
		y = _dest_y;
	}
}