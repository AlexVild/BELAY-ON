right_holds = ds_list_create();
left_holds = ds_list_create();
right_hold_boxes = ds_list_create();
left_hold_boxes = ds_list_create();
game_manager = noone;
init = false; // toggles when handboxes have been initialized
holds_climbed = 0;
total_holds = -1;
active_hold_box_type = HOLD_BOX_TYPE.RIGHT;
right_hold_index = 0;
left_hold_index = 0;

climber = instance_create_layer(272, 224, "Climbers", obj_climber);
with (climber) {
	belongs_to = other;	
}
belayer = instance_create_layer(240, 240, "Climbers", obj_belayer);
with (belayer) {
	belongs_to = other;	
}

/// @func start_climb()
/// @desc Starts a climb on a given wall
start_climb = function() {
	with (climber) {
		is_climbing = true;	
	}
	
	with (belayer) {
		belay_on = true;	
	}
}

/// @func progress_wall
/// @desc moves the given wall instance forward after successfully grabbing a hold in the hold box
/// @args {HOLD_BOX_TYPE} box_type
/// @args {real} grip_percent
progress_wall = function(_box_type, _grip_percent) {
	if (holds_climbed <= 0) {
		start_climb();
	}
	holds_climbed++;
	if (_box_type == HOLD_BOX_TYPE.RIGHT) {
		right_hold_index++;
		active_hold_box_type = HOLD_BOX_TYPE.LEFT;
	} else {
		left_hold_index++;
		active_hold_box_type = HOLD_BOX_TYPE.RIGHT;
	}
	update_hold_box_positions();
					
	with (climber) {
		grip_percent = _grip_percent;
	}
}