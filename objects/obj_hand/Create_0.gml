event_inherited();

hold_box_parent = noone;
is_hovered = false;
is_clicked = false;
grip_percent = 0.0;
hold_hb_grabbing = noone;
climber = noone;
slack_status = SLACK_STATUS.GOOD;
face_dir = facing_right;

enum HAND_STATES {
	SEEKING,
	GRABBED,
}

state = HAND_STATES.SEEKING;
hold_grabbed = -1;

intent_x = x;
intent_y = y;
max_spd = 2;
min_spd = 0.25;
hspd = 0;
vspd = 0;
hspd_slack_mod = 0;
vspd_slack_mod = 0;
little_low_slack_mod = 0.2;
low_slack_spd = 0.6;
very_low_slack_spd = 1.2;