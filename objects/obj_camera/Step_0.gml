x += (x_to - x) / camera_acceleration; // camera acceleration
y += (y_to - y) / camera_acceleration;

// Do not exceed room edge
var view_w_half = default_viewport_width / 2;
var view_h_half = default_viewport_height / 2;

var _clampped_x = clamp(x, view_w_half + shake_buff, (room_width - view_w_half) - shake_buff);
var _clampped_y = clamp(y, view_h_half + shake_buff, (room_height - view_h_half) - shake_buff);

if (obj_following != noone && instance_exists(obj_following)) { // updating following location
	x_to = obj_following.x;
	y_to = obj_following.y;
}

// Shake screen
_clampped_x += random_range(-shake_remain, shake_remain);
_clampped_y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));

// Move the camera to the new position
var view_matrix = matrix_build_lookat(_clampped_x, _clampped_y, -10, _clampped_x, _clampped_y, 0, 0, 1, 0);
camera_set_view_mat(view_camera[0], view_matrix)

global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

#region Parallaxing
if (layer_exists(parallax_closer)) {	
	layer_x(parallax_far, _clampped_x / 1.38 + plax_offsets[plax_closer_idx]);
}
if (layer_exists(parallax_close)) {	
	layer_x(parallax_far, _clampped_x / 1.25 + plax_offsets[plax_close_idx]);
}
if (layer_exists(parallax_far)) {	
	layer_x(parallax_far, _clampped_x / 1.14 + plax_offsets[plax_far_idx]);
}
if (layer_exists(parallax_farther)) {	
	layer_x(parallax_farther, _clampped_x / 1.1 + plax_offsets[plax_farther_idx]);
}
if (layer_exists(parallax_farthest)) {	
	layer_x(parallax_farthest, _clampped_x / 1.05 + plax_offsets[plax_farthest_idx]);
}
if (layer_exists(parallax_max)) {	
	layer_x(parallax_max, _clampped_x + plax_offsets[plax_max_idx]);
}
if (layer_exists(parallax_max_2)) {	
	layer_x(parallax_max_2, _clampped_x + plax_offsets[plax_max_idx_2]);
}
#endregion