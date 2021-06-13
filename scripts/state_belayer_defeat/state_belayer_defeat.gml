/// @func
/// @desc
function state_belayer_defeat(_event){
	if (_event == step) {
		if (state_new) {
			belay_on = false;	
		}
	} else if (_event == draw) {
		sprite_index = defeat_spr;
		draw_self();
	}
}