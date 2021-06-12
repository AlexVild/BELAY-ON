wall = instance_create_depth(x, y, depth, obj_wall_easy);

with (wall) {
	game_manager = other;
}

wall_failed = false;
wall_completed = false;
is_displaying = false;