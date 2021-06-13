belayer = noone;
slack = 0;
slack_status = get_slack_status(slack);
dial = instance_create_depth(x, y, depth - 1, obj_rope_meter_dial);
with (dial) {
	meter = other;
}

alarm_low_slack = instance_create_depth(x - 20, y - 5, depth + 1, obj_rope_alarm);
alarm_high_slack = instance_create_depth(x + 20, y - 5, depth + 1, obj_rope_alarm);
mouse_alert = instance_create_depth(x, y - 70, depth - 1, obj_mouse_alert);