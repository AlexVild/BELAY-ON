 /// @func check_collision_and_move_xy
/// @desc checks for both horizontal and vertical collision, and moves the object accordingly
function check_collision_and_move_xy() {

	check_horizontal_collision();
	x += hspd;

	check_vertical_collision();
	y += vspd;


}
