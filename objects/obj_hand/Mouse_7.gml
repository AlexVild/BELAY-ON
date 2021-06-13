if (slack_status == SLACK_STATUS.LOW || slack_status == SLACK_STATUS.VERY_LOW) {
	display_alert(ALERT.NEED_SLACK, x, y);
} else {
	if (is_clicked && !disabled) {
		set_hand_hitbox_active(true);
	}
}

event_inherited();