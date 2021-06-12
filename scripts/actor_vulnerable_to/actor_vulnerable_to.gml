/// @func actor_vulnerable_to
/// @arg damaging_instance
/// @arg state_to_switch_to
function actor_vulnerable_to(argument0, argument1) {

	if (place_meeting(x, y, argument0)) {
		if (!invincible) {
			truestate_switch(argument1);
		}
	}


}
