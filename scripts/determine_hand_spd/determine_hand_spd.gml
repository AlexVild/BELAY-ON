/// @func determine_hand_spd
/// @desc determines the max speed of the hand based on climber's max stamina
/// @args {int} climber_stamina
function determine_hand_spd(_stamina) {
	var _speed = (_stamina / 100) * max_spd;
	_speed = clamp(_speed, min_spd, max_spd);
	return  _speed;
}