event_inherited();

#region Right hand
ds_list_add(right_holds, new Hold(HOLD_TYPE.MONO, 0, 0));
ds_list_add(right_holds, new Hold(HOLD_TYPE.MONO, -6, 4));
ds_list_add(right_holds, new Hold(HOLD_TYPE.MONO, -6, 4));
ds_list_add(right_holds, new Hold(HOLD_TYPE.MONO, -6, 4));
#endregion

#region Left hand
ds_list_add(left_holds, new Hold(HOLD_TYPE.MONO, -6, 4));
ds_list_add(left_holds, new Hold(HOLD_TYPE.MONO, 0, 0));
ds_list_add(left_holds, new Hold(HOLD_TYPE.MONO, 0, 0));
ds_list_add(left_holds, new Hold(HOLD_TYPE.MONO, 0, 0));
#endregion

hold_distance = 55;