/// @func
/// @desc
function state_belayer_victory(_event){
	if (_event == step) {
		if (state_new) {
			on_belay = false;	
		}
	} else if (_event == draw) {
		sprite_index = victory_spr;
		draw_self();
	}
}