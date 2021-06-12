game_player_instance = noone;
screen_is_on = true;
player_score = 0;
enemy_spawn_timer = 120;
spawn_enemy = true;
off_screen = instance_create_layer(x, y, "TV_GUI", obj_off_screen);
message_frequency_mod = 1;
difficulty_score_thresh = 100;
difficulty_score_add = 100;

crosshair = instance_create_layer(mouse_x, mouse_y, "TV_2", obj_crosshair);
with (crosshair) {
	game_instance = other.id;	
}

play_bounds = [bbox_left + 10, bbox_top + 10, bbox_right - 10, bbox_bottom - 50];

audio_play_sound(sfx_tv_hum, 0, true);
play_subgame_sound(sfx_game_start);