/// @func display_stamina_bar
/// @desc displays the stamina bar, and shakes it when low
function display_stamina_bar(){
	var _start = display_get_gui_width() / 2 - 35;
	var _end = display_get_gui_width() / 2 + 45;
	var _y_start = 15;
	var _width = 10;
	
	draw_set_font(fnt_game);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text(display_get_gui_width() / 2 + 5, _y_start + 3, "STAMINA");
	draw_set_font(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
	
	// shake the healthbar when stamina is low
	var _shake_mod = 0;
	if (stamina < 50) {
		_shake_mod = irandom_range(-1, 1);
	}
	_start += _shake_mod;
	_end += _shake_mod;
	if (stamina < 25) { // shake y axis too if real low
		_y_start += _shake_mod;
	}
	draw_healthbar(_start, _y_start, _end, _y_start + _width, stamina, c_black, c_lime, c_lime, 0, true, true);	
}