switch(state) {
	case PhoneState.CLOSED:
		if (player_instance.game_instance.screen_is_on) {
			sprite_index = spr_phone_closed;
		} else {
			sprite_index = spr_phone_closed_dark;
		}
		break;
	case PhoneState.OPEN:
		sprite_index = spr_phone_open;
		break;
}

draw_self();