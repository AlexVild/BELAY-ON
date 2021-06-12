hold_manager = instance_create_depth(x, y, depth, obj_hold_manager);
wall = instance_create_depth(x, y, depth, obj_wall_easy);

#region init hand boxes
with (wall) {
		
}

right_hand_box = instance_create_depth(right_hand_box_spawn_x, right_hand_box_spawn_y, depth, obj_hold_box);
left_hand_box = instance_create_depth(left_hand_box_spawn_x, left_hand_box_spawn_y, depth, obj_hold_box);

with (obj_hold_box) {
	game_manager = other;
}

with (right_hand_box) {
	hold_box_type = HOLD_BOX_TYPE.RIGHT;
}

with (left_hand_box) {
	hold_box_type = HOLD_BOX_TYPE.LEFT;
}
#endregion

