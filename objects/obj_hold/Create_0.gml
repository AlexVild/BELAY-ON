x_offset = 0;
y_offset = 0;
grabbing_hitbox = noone;
hold_hitbox = noone;
belongs_to = noone;
face_dir = facing_right;

/// @func is_grabbed
/// @desc determine if a hold is grabbed by its appropriate hitbox
is_grabbed = function() {
	var _ret = false;
		
	var _grab_spr = data_store.hold_mapping[? type];
	var _hitboxes = ds_list_create();
	
	with (hold_hitbox) {
		var _amt_hitboxes = instance_place_list(x, y, obj_hitbox, _hitboxes, false);
		
		if (_amt_hitboxes > 0) {
			for (var i = 0; i < _amt_hitboxes; i++) {
				var _hitbox = _hitboxes[| i];
				var _left_spr = asset_get_index(sprite_get_name(_grab_spr) + "_left");
				if ((_hitbox.sprite_index == _grab_spr || _hitbox.sprite_index == _left_spr) && _hitbox.active) {
					_ret = true;
					other.grabbing_hitbox = _hitbox;
				}
			}
		}
		
		ds_list_destroy(_hitboxes);
	}
	
	if (!_ret) {
		grabbing_hitbox = noone;	
	}
	return _ret;
}