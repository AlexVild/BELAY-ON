/// @func create_hold_box
/// @desc creates a hold box
/// @args {int} x
/// @args {int} y
/// @args {int} type
/// @args {int} hold_instance_id
function create_hold_box(_x, _y, _type, _hold){
	var _box = instance_create_depth(_x, _y, depth, obj_hold_box);
	if (_type == HOLD_BOX_TYPE.RIGHT) {
		ds_list_add(right_hold_boxes, _box);
	} else {
		ds_list_add(left_hold_boxes, _box);
	}
	with (_box) {
		hold_box_type = _type;
		if (hold_box_type == HOLD_BOX_TYPE.LEFT) {
			hspd *= -1;
		}
		wall_instance = other;
		hold_box_locked = true;
		
		spawn_hold_in_hold_box(_hold);
	}
}