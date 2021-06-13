event_inherited();

#region Right hand
ds_list_add(right_holds, new Hold(HOLD_TYPE.JUG, 4, -8));
ds_list_add(right_holds, new Hold(HOLD_TYPE.EDGE, 3, 2));
ds_list_add(right_holds, new Hold(HOLD_TYPE.JUG, 5, -4));
ds_list_add(right_holds, new Hold(HOLD_TYPE.EDGE, 7, -2));
ds_list_add(right_holds, new Hold(HOLD_TYPE.JUG, -4, -4));
ds_list_add(right_holds, new Hold(HOLD_TYPE.EDGE, 8, -4));
ds_list_add(right_holds, new Hold(HOLD_TYPE.EDGE, 0, 0));

#endregion

#region Left hand
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, 5, -4));
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, -2, 0));
ds_list_add(left_holds, new Hold(HOLD_TYPE.EDGE, -6, -4));
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, 0, -4));
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, -3, 0));
ds_list_add(left_holds, new Hold(HOLD_TYPE.CRIMP, -5, 2));
ds_list_add(left_holds, new Hold(HOLD_TYPE.EDGE, 0, -5));
#endregion

hold_distance = 55;
hold_variance = 5;