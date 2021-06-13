/// @func initialize_hold
/// @desc attaches the correct hitbox to a given hold
/// @args {HOLD_TYPE} type - the type of hold
function initialize_hold(_type){
	hold_hitbox = instance_create_depth(x, y, depth - 1, obj_hold_hitbox);
	with (hold_hitbox) {
		hitbox_belongs_to = other;
		sprite_index = other.hold_hitbox_spr;
	}
}