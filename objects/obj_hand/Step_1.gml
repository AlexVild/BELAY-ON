var _dest_x = x;
var _dest_y = y;
var _og_x = x;
var _og_y = y;

#region mouse movement/stamina modifier
if (is_clicked) {
	var _mouse_x = mouse_x + drag_offset_x;
	var _mouse_y = mouse_y + drag_offset_y;
	
	_dest_x = _mouse_x;
	_dest_y = _mouse_y;
}
#endregion

#region Slack modifiers
if (!disabled) {
	if (instance_exists(climber)) {
		slack_status = climber.slack_status;
		switch (slack_status) {
			case SLACK_STATUS.HIGH:
				_dest_x += irandom_range(-fear_mod_low, fear_mod_low);
				_dest_y += irandom_range(-fear_mod_low, fear_mod_low);
				break;
			case SLACK_STATUS.VERY_HIGH:
				_dest_x += irandom_range(-fear_mod_high, fear_mod_high);
				_dest_y += irandom_range(-fear_mod_high, fear_mod_high);
				break;
			case SLACK_STATUS.LOW:
				_dest_x = clamp(_dest_x, _og_x - 1, _og_x + 1);
				_dest_y = clamp(_dest_y, _og_y - 1, _og_y + 1);
				break;
			case SLACK_STATUS.VERY_LOW:
				_dest_x = _og_x;
				_dest_y = _og_y;
				break;
		}
	}
}
#endregion

#region Hold box collision
if (_dest_x < hold_box_parent.bbox_right && _dest_x > hold_box_parent.bbox_left) {
	x = _dest_x;
}
if (_dest_y < hold_box_parent.bbox_bottom && _dest_y > hold_box_parent.bbox_top) {
	y = _dest_y;
}
#endregion