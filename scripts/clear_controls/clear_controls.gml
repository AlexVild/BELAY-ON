/// @func clear_controls(*id)
/// @desc clears the controls set by a player - useful for cutscenes
/// @args real {id} *id instance to clear controls of
function clear_controls() {

	var _id = id;
	if (argument_count > 0) {
		_id = argument[0];	
	}

	_id.up = [0,0,0];
	_id.down = [0,0,0];
	_id.left = [0,0,0];
	_id.right = [0,0,0];
	_id.dpad_dir = no_direction;
	_id.attack = [0,0,0];
	_id.jump = [0,0,0];
	_id.backdash = [0,0,0];
	_id.aim = [0,0,0];


}
