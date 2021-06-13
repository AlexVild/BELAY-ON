event_inherited();

#region Right hand
ds_list_add(right_holds, new Hold(HOLD_TYPE.JUG, 0, 0));
ds_list_add(right_holds, new Hold(HOLD_TYPE.JUG, 5, 6));
ds_list_add(right_holds, new Hold(HOLD_TYPE.JUG, 0, 0));
ds_list_add(right_holds, new Hold(HOLD_TYPE.JUG, 5, 6));
#endregion

#region Left hand
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, -6, 4));
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, -6, 4));
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, -6, 4));
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, -6, 4));
#endregion

hold_distance = 20;