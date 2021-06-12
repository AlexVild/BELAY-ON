/// @func check_vertical_collision()
/// @desc checks whether or not some actor will collide with a collider, and if they will, move them as 
///		  close as possible
function check_vertical_collision() {

	desired_ypos = y + vspd; // where we plan to be if we don't collide (used to detect if we've hit a wall)

	var _rounded_y = round(y) + ceil_signed(vspd);
	if (place_meeting(round(x), _rounded_y, obj_full_collider)) {
		round_position();
	
		while(!place_meeting(x, y + sign(vspd), obj_full_collider)) {
			y += sign(vspd);
		}
	
		vspd = 0;
	}


}
