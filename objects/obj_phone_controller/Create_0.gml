event_inherited();
state = PhoneState.CLOSED;

message_instance = instance_create_layer(48, 224, "Phone_1", obj_message_controller);
notification_instance = instance_create_layer(x, y, "Phone_2", obj_notification_controller);
next_button_instance = instance_create_layer(x, y, "Phone_2", obj_phone_next_button);

with (message_instance) {
	phone_instance = other.id;
}

with(notification_instance) {
	phone_instance = other.id;
}

with (next_button_instance) {
	phone_instance = other.id;
}

previous_selection = false;