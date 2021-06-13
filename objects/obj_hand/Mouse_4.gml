if (!disabled) {
	set_hand_hitbox_active(false);
}
if (slack_status == SLACK_STATUS.LOW || slack_status == SLACK_STATUS.VERY_LOW) {
	display_alert(ALERT.NEED_SLACK, x, y);
}

event_inherited();

