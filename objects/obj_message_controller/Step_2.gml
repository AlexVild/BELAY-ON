// If dad interrupted the normal flow, start the message alarm again.
if (!instance_exists(obj_dad) && !alarm[0]) {
	alarm[0] = message_interval + message_variance;
}