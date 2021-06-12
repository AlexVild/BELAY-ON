if (screen_is_on) {
	if (global.game_over) {
		draw_sprite(spr_game_over, 0, x, y - 50);
	}

	var _center_x = x;
	var _center_y = y;
	var _distance_to_bar = bbox_bottom - y;

	// draw gui bar
	draw_sprite(spr_gui_bar, 0, _center_x, y + _distance_to_bar);

	var _health = 0;
	if (instance_exists(game_player_instance)) {
		_health = game_player_instance.hit_points;	
	}

	var _health_x = x + 18;	
	var _health_x_padding = 15;
	
	for (var i = 0; i < 5; i++) {
		if(i < _health) {
			draw_sprite(spr_health, 0, _health_x, y + _distance_to_bar);
		} else {
			draw_sprite(spr_health_empty, 0, _health_x, y + _distance_to_bar);
		}
	
		_health_x += _health_x_padding;
	}

	var _bomb_count = 0;
	if (instance_exists(game_player_instance)) {
		_bomb_count = game_player_instance.bomb_count;
	}
	var _bomb_count_x = x - 8;

	draw_sprite(spr_gui_bomb_count, 0, _bomb_count_x, y + _distance_to_bar);

	draw_set_font(fnt_game);
	var _text_color = make_color_rgb(15, 56, 15);
	draw_text_single_color(_bomb_count_x + 5, y + _distance_to_bar - 9, string(_bomb_count), _text_color, 1);

	var _score = player_score;

	draw_text_single_color(bbox_left + 5, y + _distance_to_bar - 9, string(_score), _text_color, 1);

	draw_set_font(-1);
}