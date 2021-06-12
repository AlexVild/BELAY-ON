function initialize_hand_hitboxes(){
	mono_hb = instance_create_depth(x, y, depth - 1, obj_hitbox);
	with (mono_hb) {
		hitbox_belongs_to = other;
		sprite_index = spr_hand_hb_mono;
	}

	crimp_hb = instance_create_depth(x, y, depth - 1, obj_hitbox);
	with (crimp_hb) {
		hitbox_belongs_to = other;
		sprite_index = spr_hand_hb_crimp;
	}

	slope_hb = instance_create_depth(x, y, depth - 1, obj_hitbox);
	with (slope_hb) {
		hitbox_belongs_to = other;
		sprite_index = spr_hand_hb_slope;
	}

	jug_hb = instance_create_depth(x, y, depth - 1, obj_hitbox);
	with (jug_hb) {
		hitbox_belongs_to = other;
		sprite_index = spr_hand_hb_jug;
	}
}