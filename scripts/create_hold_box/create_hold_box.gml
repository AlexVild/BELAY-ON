/// @func create_hold_box
/// @desc creates a hold box
/// @args {int} x
/// @args {int} y
/// @args {int} type
/// @args {int} hold_instance_id
function create_hold_box(_x, _y, _type, _hold){
	with (instance_create_depth(_x, _y, depth, obj_hold_box)) {
		hold_box_type = _type;
		spawn_hold_in_hold_box(_hold);
	}
}