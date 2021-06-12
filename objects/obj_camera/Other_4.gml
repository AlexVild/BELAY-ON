/// @desc Set the view to the camera
if (instance_exists(obj_following)) {
	x = obj_following.x;
	y = obj_following.y - camera_y_offset;
}

plax_offsets[plax_max_idx] = layer_get_x(parallax_max);
plax_offsets[plax_farthest_idx] = layer_get_x(parallax_farthest);
plax_offsets[plax_farther_idx] = layer_get_x(parallax_farther);
plax_offsets[plax_far_idx] = layer_get_x(parallax_far);
plax_offsets[plax_close_idx] = layer_get_x(parallax_close);
plax_offsets[plax_closer_idx] = layer_get_x(parallax_closer);
plax_offsets[plax_max_idx_2] = layer_get_x(parallax_max_2);

global.camera = view_camera[0];