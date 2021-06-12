/// @func
/// @desc
function state_climber_wall_idle(_event){
	if (_event == step) {
		var _drain = base_stamina_degrade_rate + power(.75 * (1 - grip_percent), 2);
		stamina -= _drain;
	} else if (_event == draw) {
		draw_self();
	}
}