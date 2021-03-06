switch(data_store.selected_difficulty) {
	case DIFFICULTY.HARD:
		wall = instance_create_depth(x, y, depth, obj_wall_hard);
		break;
	case DIFFICULTY.MEDIUM:
		wall = instance_create_depth(x, y, depth, obj_wall_medium);
		break;
	default:
		wall = instance_create_depth(x, y, depth, obj_wall_easy);
		break;
}

with (wall) {
	game_manager = other;
}

wall_failed = false;
wall_completed = false;
is_displaying = false;

timer = instance_create_layer(0, 0, "Game", obj_timer);
with (timer) {
	manager = other;;
}