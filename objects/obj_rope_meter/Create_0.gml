belayer = noone;
slack = 0;
dial = instance_create_depth(x, y, depth - 1, obj_rope_meter_dial);
with (dial) {
	meter = other;
}