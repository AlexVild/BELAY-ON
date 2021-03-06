/// @func create_wall_holds
/// @desc creates all of the hold_boxes for the calling wall object
function create_wall_holds(){
	total_holds = ds_list_size(right_holds) + ds_list_size(left_holds);
	
	if (total_holds > 0) {
		for (var i = 0; i < ds_list_size(right_holds); i++) {
			var _y;
			if (i > 0) {
				_y = right_hold_box_spawn_y - (hold_box_padding * i);
			} else {
				_y = right_hold_box_spawn_y;
			}
			create_hold_box(right_hold_box_spawn_x, _y, HOLD_BOX_TYPE.RIGHT, right_holds[| i]);
		}
		for (var i = 0; i < ds_list_size(left_holds); i++) {
			if (i > 0) {
				_y = left_hold_box_spawn_y - (hold_box_padding * i);
			} else {
				_y = left_hold_box_spawn_y;
			}
			create_hold_box(left_hold_box_spawn_x, _y, HOLD_BOX_TYPE.LEFT, left_holds[| i]);
		}
		
		// Initial hands
		if (ds_list_size(right_hold_boxes) > 0) {
			with (right_hold_boxes[| 0]) {
				create_hand();
			}
		}
		if (ds_list_size(left_hold_boxes) > 0) {
			with (left_hold_boxes[| 0]) {
				create_hand();
			}
		}
	} else {
		show_message("NO HOLDS FOUND TO INITIALIZE WALL! Closing game.");
		game_end();
	}
}