event_inherited();

if (instance_exists(climber)) {
	var _climber_stamina;
	with (climber) {
		_climber_stamina = stamina;	
	}
	
	mvmt_spd = determine_hand_spd(_climber_stamina);
}

if (hold_box_parent.hold_box_locked) {
	disabled = true;
} else if (state == HAND_STATES.GRABBED) {
	disabled = true;
} else {
	disabled = false;
	
	if (hold_hb_grabbing && instance_exists(hold_hb_grabbing)) {
		if (!instance_place(x, y, hold_hb_grabbing)) {
			hold_hb_grabbing = noone;
			grip_percent = 0.0;
		}
	}
}

if (!instance_exists(hold_box_parent)) {
	instance_destroy();	
}

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

#region Slack modifiers/hand movement
if (!disabled) {
	if (instance_exists(climber)) {
		slack_status = climber.slack_status;
	}
	
	#region accelerating
	if (is_clicked) {
		var _angle_to_dest = point_direction(x, y, _dest_x, _dest_y);
		hspd = dcos(_angle_to_dest) * mvmt_spd;
		vspd = -dsin(_angle_to_dest) * mvmt_spd;
	} else {
		hspd = 0;
		vspd = 0;
	}
	#endregion
	
	#endregion
	if (slack_status == SLACK_STATUS.LOW) {
		vspd_slack_mod += low_slack_spd;
	} else if (slack_status == SLACK_STATUS.VERY_LOW) {
		vspd_slack_mod += very_low_slack_spd;
	} else if (slack_status == SLACK_STATUS.LITTLE_LOW) {
		vspd_slack_mod += little_low_slack_mod;
	}
	
	switch (slack_status) {
		case SLACK_STATUS.LITTLE_HIGH:
			hspd_slack_mod += irandom_range(-fear_mod_very_low, fear_mod_very_low);
			vspd_slack_mod += irandom_range(-fear_mod_very_low, fear_mod_very_low);
			break;
		case SLACK_STATUS.HIGH:
			hspd_slack_mod += irandom_range(-fear_mod_low, fear_mod_low);
			vspd_slack_mod += irandom_range(-fear_mod_low, fear_mod_low);
			break;
		case SLACK_STATUS.VERY_HIGH:
			hspd_slack_mod += irandom_range(-fear_mod_high, fear_mod_high);
			vspd_slack_mod += irandom_range(-fear_mod_high, fear_mod_high);
			break;
	}
	
	show_debug_message(hspd_slack_mod);
	intent_x = x + hspd + hspd_slack_mod;
	intent_y = y + vspd + vspd_slack_mod;
	intent_x = round(intent_x);
	intent_y = round(intent_y);
	#region low slack mods
	
	#region Hold box collision
	if (intent_x < hold_box_parent.bbox_right && intent_x > hold_box_parent.bbox_left) {
		if ((sign(hspd) == 1 && x + hspd > _dest_x) || (sign(hspd) == -1 && x + hspd < _dest_x)) {
			x = _dest_x;
		} else {
			x += hspd + hspd_slack_mod;
		}
	}
	if (intent_y < hold_box_parent.bbox_bottom && intent_y > hold_box_parent.bbox_top) {
		if ((sign(vspd) == 1 && y + vspd > _dest_y) || (sign(vspd) == -1 && y + vspd < _dest_y)) {
			y = _dest_y;
		} else {
			y += vspd + vspd_slack_mod;
		}
	}
	#endregion
	
	hspd_slack_mod = 0;
	vspd_slack_mod = 0;
}

#endregion

