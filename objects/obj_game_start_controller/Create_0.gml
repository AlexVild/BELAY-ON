global.camera_controller = instance_create_depth(0, 0, 0, obj_camera);
global.display_controller = instance_create_depth(0, 0, 0, obj_display_controller);
global.cursor_controller = instance_create_depth(0, 0, 0, obj_cursor_controller);
global.full_screen = false;

randomize();

room_goto(rm_title);