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