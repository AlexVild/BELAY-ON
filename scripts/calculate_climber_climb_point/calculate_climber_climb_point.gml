/// @func calculate_climber_climb_point
/// @desc calculates whre the climber should be climbing to
/// @args {int} wall_id
function calculate_climber_climb_point(_wall){
	var _dist = (_wall.holds_climbed / _wall.total_holds) * summit_distance;
	return _dist;
}