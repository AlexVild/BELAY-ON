event_inherited();

if (hold_hb_grabbing && instance_exists(hold_hb_grabbing)) {
	if (!instance_place(x, y, hold_hb_grabbing)) {
		hold_hb_grabbing = noone;
		grip_percent = 0.0;
	}
}