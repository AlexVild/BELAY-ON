hold_mapping = ds_map_create();
hold_obj_mapping = ds_map_create();

enum HOLD_TYPE {
	MONO,
	CRIMP,
	EDGE,
	JUG,
}

selected_difficulty = DIFFICULTY.EASY;

ds_map_add(hold_mapping, HOLD_TYPE.MONO, spr_hand_hb_mono);
ds_map_add(hold_mapping, HOLD_TYPE.CRIMP, spr_hand_hb_crimp);
ds_map_add(hold_mapping, HOLD_TYPE.EDGE, spr_hand_hb_slope);
ds_map_add(hold_mapping, HOLD_TYPE.JUG, spr_hand_hb_jug);

ds_map_add(hold_obj_mapping, HOLD_TYPE.MONO, obj_hold_mono);
ds_map_add(hold_obj_mapping, HOLD_TYPE.CRIMP, obj_hold_crimp);
ds_map_add(hold_obj_mapping, HOLD_TYPE.EDGE, obj_hold_edge);
ds_map_add(hold_obj_mapping, HOLD_TYPE.JUG, obj_hold_jug);