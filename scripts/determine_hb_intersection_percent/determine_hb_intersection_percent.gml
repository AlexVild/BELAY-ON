/// @func determine_hb_intersection_percent
/// @desc determines by how much two rectangular hitboxes are intersecting
/// @args {real} id_1
/// @args {real} id_2
/// @returns {int} percent value

function determine_hb_intersection_percent(_hold_hb_id, _hand_hb_id) {
	var _side_diff, _top_diff;
	var _hold_bbox_width = _hold_hb_id.bbox_right - _hold_hb_id.bbox_left;
	var _hold_bbox_height = _hold_hb_id.bbox_bottom - _hold_hb_id.bbox_top;
	
	var _area_in = _hold_bbox_width * _hold_bbox_height
	
	_side_diff = abs(_hold_hb_id.bbox_left - _hand_hb_id.bbox_left);
	_top_diff = abs(_hold_hb_id.bbox_top - _hand_hb_id.bbox_top);
	
	return abs((_hold_bbox_width - _side_diff) * (_hold_bbox_height -_top_diff)) / _area_in;
}