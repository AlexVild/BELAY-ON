event_inherited();

#region Right hand
ds_list_add(right_holds, new Hold(HOLD_TYPE.EDGE, 4, -2));
ds_list_add(right_holds, new Hold(HOLD_TYPE.EDGE, 5, 3));
ds_list_add(right_holds, new Hold(HOLD_TYPE.CRIMP, 4, 4));
ds_list_add(right_holds, new Hold(HOLD_TYPE.MONO, 9, 7));
ds_list_add(right_holds, new Hold(HOLD_TYPE.CRIMP, 2, 2));
ds_list_add(right_holds, new Hold(HOLD_TYPE.MONO, 1, -2));
ds_list_add(right_holds, new Hold(HOLD_TYPE.MONO, 4, 3));
ds_list_add(right_holds, new Hold(HOLD_TYPE.CRIMP, -4, -5));
ds_list_add(right_holds, new Hold(HOLD_TYPE.MONO, 0, 12));
ds_list_add(right_holds, new Hold(HOLD_TYPE.EDGE, 4, -2));
#endregion

#region Left hand
ds_list_add(left_holds, new Hold(HOLD_TYPE.CRIMP, 8, -4));
ds_list_add(left_holds, new Hold(HOLD_TYPE.MONO, -8, 3));
ds_list_add(left_holds, new Hold(HOLD_TYPE.MONO, 9, -7));
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, 2, -3));
ds_list_add(left_holds, new Hold(HOLD_TYPE.CRIMP, 2, -2));
ds_list_add(left_holds, new Hold(HOLD_TYPE.EDGE, -6, 9));
ds_list_add(left_holds, new Hold(HOLD_TYPE.MONO, -8, -4));
ds_list_add(left_holds, new Hold(HOLD_TYPE.EDGE, 0, -10));
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, 0, 0));
ds_list_add(left_holds, new Hold(HOLD_TYPE.JUG, 0, 0));
#endregion

hold_distance = 65;
hold_variance = 20;