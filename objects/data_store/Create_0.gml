hold_mapping = ds_map_create();

enum HOLD_TYPE {
	MONO,
	CRIMP,
	SLOPE,
	JUG,
}

ds_map_add(hold_mapping, HOLD_TYPE.MONO, spr_hand_hb_mono);
ds_map_add(hold_mapping, HOLD_TYPE.CRIMP, spr_hand_hb_crimp);
ds_map_add(hold_mapping, HOLD_TYPE.SLOPE, spr_hand_hb_slope);
ds_map_add(hold_mapping, HOLD_TYPE.JUG, spr_hand_hb_jug);

/// @func Hold
/// @desc constructor for the Hold object
/// @args {HOLD_TYPE} type - type of hold
/// @args {real} x_offset - x offset form the center of the hold display
/// @args {real} y_offset - y offset form the center of the hold display
Hold = function(_type, _x_offset, _y_offset) constructor {
	type = _type;
	x_offset = _x_offset;
	y_offset = _y_offset;
	is_grabbed = function() {
		var _ret = false;
		
		var _grab_spr = data_store.hold_mapping[? type];
		var _hitboxes = ds_list_create();
		var _amt_hitboxes = instance_place_list(x, y, obj_hitbox, _hitboxes, false);
		
		if (_amt_hitboxes > 0) {
			for (var i = 0; i < _amt_hitboxes; i++) {
				var _hitbox = _hitboxes[i];
				if (_hitbox.sprite_index == _grab_spr) {
					ret = true;
				}
			}
		}
		
		ds_list_destroy(_hitboxes);
		return _ret;
	}
}