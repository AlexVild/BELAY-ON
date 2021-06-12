ideal_width = 0; // this is not going to be a static scaling, so we can caluclate it later
ideal_height = 270;	// we want the height to scale consistently
zoom = 3; // default resolution
refresh = false; // whether or not to refresh the screen
max_zoom = 0; // will be caluclated
min_zoom = 1;

aspect_ratio = display_get_width() / display_get_height();

ideal_width = round(ideal_height * aspect_ratio);

if (display_get_width() % ideal_width != 0) {
	var _d = round(display_get_width() / ideal_width);
	ideal_width = round(display_get_width() / _d);
}
if (display_get_height() % ideal_height != 0) {
	var _d = round(display_get_height() / ideal_height);
	ideal_height = round(display_get_height() / _d);
}

// ensure width is even
if(ideal_width & 1)
	ideal_width++;
if(ideal_height & 1)
	ideal_height++;

max_zoom = floor(display_get_width() / ideal_width);

for (var i = 1; i <= room_last; i++) { // never set room viewports again! gives every room the same default viewport
	if (room_exists(i)) {
		room_set_viewport(i, 0, true, 0, 0, ideal_width, ideal_height);
		room_set_view_enabled(i, true);
	}
}

display_set_gui_size(ideal_width, ideal_height);
refresh = true; // we want to redraw the window with our calculated values