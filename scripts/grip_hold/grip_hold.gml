/// @func grip_hold(hold_id)
/// @desc grips the given hold
/// @args {int} hold_id
function grip_hold(_hold){
	with (_hold) {
		var _percent = determine_hb_intersection_percent(hold_hitbox, grabbing_hitbox);
	
		with (grabbing_hitbox.hitbox_belongs_to) { // Update Hand
			hand_grab_hold(other.type);
			audio_play_sound(sfx_grab, 0, false);
		}
		with (belongs_to) {
			if (!hold_box_locked) {
				var _box_type = hold_box_type;
				hold_box_locked = true;
				with (wall_instance) { // Update wall
					progress_wall(_box_type, _percent);
				}
			}
			display_hold_placement_alert(_percent, x, y);
		}
	}
}