/// @func damage_actor
function damage_actor() {

	hit_points -= 1;
	invincible = true;
	alarm[0] = invincibility_timer;

	play_subgame_sound(hit_noise);


}
