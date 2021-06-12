/// @func update_hold_box_positions
/// @desc moves the holds down/horizontally after a succesful lock
function update_hold_box_positions(){
	if (holds_climbed >= 2) { // don't throw away until after the first two holds are climbed
		// throw away old hold box
		if (active_hold_box_type == HOLD_BOX_TYPE.LEFT) {
			with (left_hold_boxes[| left_hold_index - 1]) {
				x_destination = 0 - (2 * sprite_get_width(spr_hold_box));
			}
		} else {
			with (right_hold_boxes[| right_hold_index - 1]) {
				x_destination = room_width + (2 * sprite_get_width(spr_hold_box));
			}
		}
		
		with (obj_hold_box) {
			if (x_destination == x) { // if we didn't tell the box to move off screen
				y_destination = y + (hold_box_padding / 2);
			}
		}
	}
}