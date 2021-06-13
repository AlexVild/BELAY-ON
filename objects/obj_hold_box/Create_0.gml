enum HOLD_BOX_TYPE {
	LEFT,
	RIGHT,
}

enum HOLD_BOX_STATE {
	GRABBED,
	GRABBING,
	DISABLED,
}

hold_box_type = -1;
hold_to_display = noone;
hold_box_locked = false;
wall_instance = noone;
vspd = 4;
hspd = 12;
is_moving = false;
y_destination = y;
x_destination = x;
child_hand_instance = noone;

/// @func create_hand
/// @desc creates a hand inside the given hold box
create_hand = function() {
	var _climber_instance = wall_instance.climber;
	child_hand_instance = instance_create_layer(x, y, "Hands", obj_hand);
	with (child_hand_instance) {
		hold_box_parent = other;
		climber = _climber_instance;
		if (other.hold_box_type == HOLD_BOX_TYPE.LEFT) {
			face_dir = facing_left;	
		}
	}
}