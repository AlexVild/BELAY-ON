/// @desc message received/dad spawning
if (!instance_exists(obj_dad)) {
	var _sender_len = array_length_1d(possible_senders);

	do {
		var _i;
	
		// prevent back to back daddying
		var _dad_coming = (ds_list_find_index(last_message_indices, 0) || ds_list_find_index(last_message_indices, 1))
		
		if (!ds_list_empty(last_message_indices) && !_dad_coming) {
			_i = irandom_range(0, _sender_len - 1);
		} else {
			_i = irandom_range(2, _sender_len - 1);
		}
	
		var _unique_message = ds_list_find_index(last_message_indices, _i) == -1;
	} until(_unique_message || (ds_list_size(last_message_indices) > _sender_len - 4) && _dad_coming);

	if (!global.game_over) {
		ds_list_add(last_message_indices, _i);
		if (_i == 0 || _i == 1) { // You got a daddy text
			if (!alarm[1]) {
				alarm[1] = dad_coming_up_time;
			}
		}
	
		ds_list_add(messages, possible_messages[? possible_senders[_i]]);
		total_messages += 1;
		audio_play_sound(sfx_phone_vibrate, 0, false);
	}
}