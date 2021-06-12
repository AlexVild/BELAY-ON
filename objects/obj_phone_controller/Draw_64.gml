var _header_y = bbox_top + 34;
var _message_y = bbox_top + 48;
var _next_y = bbox_top + 80;

var _screen_x = bbox_left + 10;

if (state == PhoneState.OPEN) {
	draw_set_font(fnt_game);
	var _text_color = make_color_rgb(15, 56, 15);
	draw_set_color(_text_color);
	
	var _sender, _message, _next_text;
	
	if (ds_list_empty(message_instance.messages)) {
		_sender = "N/A";
		_message = "NO MESSAGES!"
	} else {
		// get the sender
		for (var k = ds_map_find_first(message_instance.possible_messages); !is_undefined(k); k = ds_map_find_next(message_instance.possible_messages, k)) {
			var v = message_instance.possible_messages[? k];
			if (v == message_instance.messages[| 0]) {
				_sender = k;  
			}
		}
		
		_message = message_instance.messages[| 0];
		
		// Display "NEXT" text
		if (ds_list_size(message_instance.messages) > 1) {
			_next_text = "NEXT >>>";
			draw_text_transformed(_screen_x, _next_y, _next_text, 0.5, 0.5, 0);
		}
	}
	
	draw_text_transformed(_screen_x, _header_y, "FROM: " + string(_sender), 0.5, 0.5, 0);
	draw_text_transformed(_screen_x, _message_y, _message, 0.5, 0.5, 0);
	
	draw_set_font(-1);
	draw_set_color(-1);
}