event_inherited();

action = function() {
	data_store.selected_difficulty = DIFFICULTY.HARD;
	room_goto(rm_wall);
}