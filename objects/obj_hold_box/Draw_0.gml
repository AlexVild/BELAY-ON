draw_self();

if (hold_box_locked) {
	draw_set_alpha(0.8);
	draw_set_color(c_black);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
	draw_set_color(c_white);
}
draw_set_alpha(1.0);