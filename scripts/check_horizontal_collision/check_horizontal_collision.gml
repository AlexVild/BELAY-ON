/// @func check_horizontal_collision()
/// @desc checks whether or not some actor will collide with a collider, and if they will, move them as 
///		  close as possible
function check_horizontal_collision() {

	desired_xpos = x + hspd; // where we plan to be if we don't collide (used to detect if we've hit a wall)

	var _rounded_x = round(x) + ceil_signed(hspd);
	if (place_meeting(_rounded_x, round(y), obj_full_collider)) {
		round_position();
	
		while(!place_meeting(x + sign(hspd), y, obj_full_collider)) {
			x += sign(hspd);
		}
	
		hspd = 0;
	}


}
