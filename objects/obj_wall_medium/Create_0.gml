event_inherited();

#region Right hand
ds_list_add(right_holds, new Hold(HOLD_TYPE.JUG, -5, -10));
ds_list_add(right_holds, new Hold(HOLD_TYPE.EDGE, -2, -6));
ds_list_add(right_holds, new Hold(HOLD_TYPE.JUG, -1, -4));
ds_list_add(right_holds, new Hold(HOLD_TYPE.EDGE, -2, 0));
ds_list_add(right_holds, new Hold(HOLD_TYPE.MONO, 0, -10));
ds_list_add(right_holds, new Hold(HOLD_TYPE.JUG, 3, 0));
#endregion

#region Left hand
ds_list_add(left_holds, new Hold(HOLD_TYPE.EDGE, 3, -6));
ds_list_add(left_holds, new Hold(HOLD_TYPE.CRIMP, -5, 2));
ds_list_add(left_holds, new Hold(HOLD_TYPE.CRIMP, -5, 2));
ds_list_add(left_holds, new Hold(HOLD_TYPE.CRIMP, -2, -2));
ds_list_add(left_holds, new Hold(HOLD_TYPE.CRIMP, -5, 0));
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, -2, 6));
#endregion

hold_distance = 65;
hold_variance = 15;