event_inherited();

with (instance_create_depth(x, y, depth - 1, obj_hitbox)) {
	hitbox_belongs_to = other;
	sprite_index = spr_hand_hb_mono;
}

with (instance_create_depth(x, y, depth - 1, obj_hitbox)) {
	hitbox_belongs_to = other;
	sprite_index = spr_hand_hb_crimp;
}

with (instance_create_depth(x, y, depth - 1, obj_hitbox)) {
	hitbox_belongs_to = other;
	sprite_index = spr_hand_hb_slope;
}

with (instance_create_depth(x, y, depth - 1, obj_hitbox)) {
	hitbox_belongs_to = other;
	sprite_index = spr_hand_hb_jug;
}

hold_box_parent = noone;
is_hovered = false;
is_clicked = false;
grip_percent = 0.0;
hold_hb_grabbing = noone;