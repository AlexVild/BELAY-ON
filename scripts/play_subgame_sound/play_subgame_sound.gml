/// @func play_subgame_sound
/// @args snd_id
function play_subgame_sound(argument0) {

	if (instance_exists(obj_game_controller)) {
		if (obj_game_controller.screen_is_on) {
			audio_play_sound(argument0, 0, false);
		}
	}


}
