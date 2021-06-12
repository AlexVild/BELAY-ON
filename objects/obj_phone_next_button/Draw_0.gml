if (phone_instance.state == PhoneState.OPEN) {
	if (pad_pressed == true) {
		sprite_index = spr_next_pressed;
	} else {
		sprite_index = spr_phone_next_depressed;	
	}
	
	draw_self();
}