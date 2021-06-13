/// @func
/// @desc
function state_belayer_belaying(_event){
	if (_event == step) {
		slack_management(self);
	} else if (_event == draw) {
		sprite_index = belaying_spr;
		draw_self();
	}
}