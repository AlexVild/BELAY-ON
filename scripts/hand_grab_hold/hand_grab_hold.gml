/// @func hand_grab_hold
/// @desc executes when the hand has been placed on a hold
/// @args {HOLD_TYPE} hold_type - the hold type that has been grabbed
function hand_grab_hold(_hold_type){
	state = HAND_STATES.GRABBED;
	hold_grabbed = _hold_type;
}