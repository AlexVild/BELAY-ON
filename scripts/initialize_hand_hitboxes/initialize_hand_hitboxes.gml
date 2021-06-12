function initialize_hand_hitboxes(){
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
}