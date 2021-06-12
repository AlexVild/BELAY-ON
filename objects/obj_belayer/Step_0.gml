event_inherited();

if (!instance_exists(belongs_to)) {
	instance_destroy();	
}

#region slack max/min
slack = clamp(slack, minimum_slack, maximum_slack);
#endregion