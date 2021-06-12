//global.camera = camera_create();
global.camera = view_camera[0];

plax_offsets = [0, 0, 0, 0, 0, 0, 0]; // offsets used for each rooms parallax layers

var view_w_half = default_viewport_width / 2;
var view_h_half = default_viewport_height / 2;

var _clampped_x = clamp(x, view_w_half, room_width - view_w_half);
var _clampped_y = clamp(y, view_h_half, room_height - view_h_half);

var view_matrix = matrix_build_lookat(_clampped_x, _clampped_y, -10, _clampped_x, _clampped_y, 0, 0, 1, 0);
var projection_matrix = matrix_build_projection_ortho(default_viewport_width, default_viewport_height, 0, 10000);

camera_set_view_mat(view_camera[0], view_matrix);
camera_set_proj_mat(view_camera[0], projection_matrix);

obj_following = noone;

// screen shaking
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
shake_buff = 0;

x_to = x;
y_to = y;

camera_acceleration = 4 // lower values = faster movement