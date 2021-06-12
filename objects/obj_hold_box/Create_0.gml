enum HOLD_BOX_TYPE {
	LEFT,
	RIGHT,
}

hold_box_type = -1;
game_manager = noone;
hold_to_display = noone;
hold_box_locked = false;

child_hand_instance = instance_create_depth(x, y, depth - 1, obj_hand);
with (child_hand_instance) {
	hold_box_parent = other;	
}