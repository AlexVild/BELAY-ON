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
hold_distance = -1; // how much slack each new hold adds
hold_variance = -1;

climber = instance_create_layer(272, 224, "Climbers", obj_climber);
belayer = instance_create_layer(240, 240, "Climbers", obj_belayer);
with (climber) {
	belongs_to = other;
	belayer = other.belayer;
}
with (belayer) {
	belongs_to = other;	
	climber = other.climber;
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
	var _wall = self;
	
	if (holds_climbed <= 0) {
		start_climb();
	}
	holds_climbed++;
	if (_box_type == HOLD_BOX_TYPE.RIGHT) {
		right_hold_index++;
		active_hold_box_type = HOLD_BOX_TYPE.LEFT;
		if (left_hold_index < ds_list_size(left_hold_boxes)) {
			with (left_hold_boxes[| left_hold_index]) {
				if (child_hand_instance == noone) {
					create_hand();
				}
			}
		}
	} else {
		left_hold_index++;
		active_hold_box_type = HOLD_BOX_TYPE.RIGHT;
		if (right_hold_index < ds_list_size(right_hold_boxes)) {
			with (right_hold_boxes[| right_hold_index]) {
				if (child_hand_instance == noone) {
					create_hand();
				}
			}
		}
	}
	update_hold_box_positions();

	var _wall_climbed = holds_climbed == total_holds;
	with (climber) {
		grip_percent = _grip_percent;
		is_finished = _wall_climbed;
		with(belayer) {
			slack -= (_wall.hold_distance + irandom_range(-_wall.hold_variance, _wall.hold_variance));
		}
	}
}