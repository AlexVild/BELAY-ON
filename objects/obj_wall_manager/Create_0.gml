hold_manager = instance_create_depth(x, y, depth, obj_hold_manager);
wall = instance_create_depth(x, y, depth, obj_wall_easy);

with (wall) {
	game_manager = other;
}