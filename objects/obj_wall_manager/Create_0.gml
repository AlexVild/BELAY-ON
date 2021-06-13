switch(data_store.selected_difficulty) {
	case DIFFICULTY.HARD:
		
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