/// @desc resize alarm - do this when changing zoom
var _new_width = ideal_width * zoom;
var _new_height = ideal_height * zoom;

window_set_size(_new_width, _new_height);
surface_resize(application_surface, _new_width, _new_height);
alarm[0] = 1; // 1 frame delay when resizing window
