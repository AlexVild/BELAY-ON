right_holds = ds_list_create();
left_holds = ds_list_create();
right_hold_boxes = ds_list_create();
left_hold_boxes = ds_list_create();
game_manager = noone;
init = false; // toggles when handboxes have been initialized
holds_climbed = 0;
total_holds = -1;
active_hold_box_type = HOLD_BOX_TYPE.RIGHT;
right_hold_index = 0;
left_hold_index = 0;

climber = instance_create_layer(272, 224, "Climbers", obj_climber);
belayer = instance_create_layer(240, 240, "Climbers", obj_belayer);