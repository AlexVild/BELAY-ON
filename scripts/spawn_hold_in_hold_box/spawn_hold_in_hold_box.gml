/// @func spawn_hold_in_hold_box
/// @desc spawns a hold within a hold box
/// @args {Hold} the Hold to spawn
function spawn_hold_in_hold_box(_hold){
	var _hold_id = data_store.hold_mapping[? _hold.type];
	var _x_offset = _hold.x_offset;
	var _y_offset = _hold.y_offset;
	hold_to_display = instance_create_depth(x + _x_offset, y + _y_offset, depth - 1, _hold_id);
	with (hold_to_display) {
		belongs_to = other;
	}
}