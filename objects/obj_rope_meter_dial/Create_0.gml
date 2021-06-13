slack = 0;
meter = noone;
reading = 0;
reading_speed = 10; // lower is faster

/// @func update_reading
/// @desc updates the reading slowly
update_reading = function() {
	reading += (slack - reading) / reading_speed;
	reading = clamp(reading, minimum_slack, maximum_slack);
}