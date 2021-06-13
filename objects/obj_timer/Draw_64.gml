if (display) {
	draw_set_color(c_black);
	draw_set_font(fnt_game);
	draw_set_halign(fa_center);
	var _time = string(time / room_speed);
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "YOUR TIME WAS: " + string(_time));
	draw_set_halign(-1);
	draw_set_font(-1);
	draw_set_color(-1);
}