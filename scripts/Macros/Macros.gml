function Macros() {
		// Direction
	#macro no_direction -1
	#macro facing_left -1
	#macro facing_right 1
	#macro facing_up -1
	#macro facing_down 1
	#macro none 0
	#macro east 0
	#macro north_east 45
	#macro north 90
	#macro north_west 135
	#macro west 180
	#macro south_west 225
	#macro south 270
	#macro south_east 315
	#macro clockwise 1
	#macro counter_clockwise -1

		// Movement mechanics
	#macro grav 0.2
	#macro terminal_velocity 7.5

		// Window size
	#macro default_viewport_height 270
	#macro default_viewport_width 480
	#macro default_room_height 270
	#macro default_room_width 480
	#macro horizontal_tiles_per_view 24
	#macro vertical_tiles_per_view 14

		// Map
	#macro map_cell_width 8
	#macro map_cell_height 8
	#macro unexplored 0
	#macro explored 1

		// Input
	#macro held 0
	#macro pressed 1
	#macro released 2

		// Cutscene
	#macro fade_in -1
	#macro fade_out 1

		// Layers
	#macro gui_layer 10
	#macro screen_layer 7
	#macro message_layer 5
	#macro root_layer 0

	#macro face_image_size 96

	#macro gui_scale 3

	#macro tile_size 16

		// Settings default values
	#macro default_master_volume 1.0
	#macro default_bgm_volume 0.4
	#macro default_sfx_volume 1.0
	#macro default_voice_volume 1.0

	#macro default_full_screen false
	#macro default_resolution 2

	#macro default_key_attack ord("Z")
	#macro default_key_jump ord("X")
	#macro default_key_bomb ord("D")
	#macro default_key_aim ord("S")
	#macro default_key_dash ord("A")
	#macro default_key_subweapon ord("C")
	#macro default_key_pause vk_escape
	#macro default_key_map vk_tab
	#macro default_key_left vk_left
	#macro default_key_up vk_up
	#macro default_key_right vk_right
	#macro default_key_down vk_down
	#macro default_key_debug_restart ord("R")
	#macro default_key_menu_accept vk_enter
	#macro default_key_menu_decline vk_backspace
	#macro default_gp_attack gp_face3
	#macro default_gp_jump gp_face1
	#macro default_gp_bomb gp_face2
	#macro default_gp_subweapon gp_shoulderl
	#macro default_gp_aim gp_shoulderr
	#macro default_gp_dash gp_face4
	#macro default_gp_pause gp_start
	#macro default_gp_map gp_select
	#macro default_gp_left gp_padl
	#macro default_gp_up gp_padu
	#macro default_gp_right gp_padr
	#macro default_gp_down gp_padd
	#macro default_gp_menu_accept gp_face1
	#macro default_gp_menu_decline gp_face2


		// Room layers
	#macro parallax_max "plax_max_2"
	#macro parallax_max_2 "plax_max"
	#macro parallax_farthest "plax_farthest"
	#macro parallax_farther "plax_farther"
	#macro parallax_far "plax_far"
	#macro parallax_close "plax_close"
	#macro parallax_closer "plax_closer"
	#macro plax_max_idx 0
	#macro plax_farthest_idx 1
	#macro plax_farther_idx 2
	#macro plax_far_idx 3
	#macro plax_close_idx 4
	#macro plax_closer_idx 5
	#macro plax_max_idx_2 6

	#macro X 0
	#macro Y 1
	#macro X1 0
	#macro Y1 1
	#macro X2 2
	#macro Y2 3

	#macro sight_front 0
	#macro sight_above 1
	#macro sight_behind 2
	#macro sight_below 3

	#macro targets_sighted 0
	#macro curr_target 1

		// Camera
	#macro shake_tile_buffer 32

		// Shader
	#macro shd_r 0
	#macro shd_g 1
	#macro shd_b 2
	#macro shd_a 3

		// Files
	#macro save_file_1 "save1.json"
	#macro save_file_2 "save2.json"
	#macro save_file_3 "save3.json"
	#macro save_file_4 "save4.json"
	#macro save_state1 "save_state1.json"
	#macro save_state2 "save_state2.json"

		// subweapons
	#macro sw_knife "knife"
	#macro sw_tire "chain_tire"
	#macro sw_axe "axe"

	#macro rose_fragment_inc_amt 4

	#macro right_hold_box_spawn_x 368
	#macro right_hold_box_spawn_y 160
	#macro left_hold_box_spawn_x 144
	#macro left_hold_box_spawn_y 96
	
	#macro hold_box_padding 128
	
	#macro perfect_threshold 0.9
	#macro good_threshold 0.75
	#macro okay_threshold 0.5
	#macro bad_threshold 0.25
	#macro uhoh_threshold 0
	
	#macro minimum_slack -100
	#macro maximum_slack 100
	#macro high_slack_threshold 60
	#macro very_high_slack_threshold 80
	#macro low_slack_threshold -60
	#macro very_low_slack_threshold -80
	
	#macro rope_meter_x 50
	#macro rope_meter_y 240
}
