/// @func update_hold_box_positions
/// @desc moves the holds down/horizontally after a succesful lock
function update_hold_box_positions(){
	// throw away old hold box
	if (active_hold_box_type == HOLD_BOX_TYPE.LEFT) {
		
	} else {
		
	}
	
	with (obj_hold_box) {
		y_destination = y + hold_box_offset;
	}
}