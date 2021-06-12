if (selected && mouse_check_button_pressed(mb_left)) {
	audio_play_sound(sfx_button_press, 0, false);
	script_execute(script_to_execute);
}

if (position_meeting(mouse_x, mouse_y, id)) {
	global.cursor_controller.something_selected = true;
	selected = true;	
} else {
	selected = false;	
}