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
hspd = 6;
is_moving = false;
y_destination = y;
x_destination = x;

child_hand_instance = instance_create_depth(x, y, depth - 1, obj_hand);
with (child_hand_instance) {
	hold_box_parent = other;	
}