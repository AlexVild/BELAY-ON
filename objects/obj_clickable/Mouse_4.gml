if (!disabled) {
	if (is_hovered) {
		if (!is_clicked) {
			clicked_x = mouse_x;
			clicked_y = mouse_y;
			drag_offset_x = x - mouse_x;
			drag_offset_y = y - mouse_y;	
		}
		is_clicked = true;
	}
}