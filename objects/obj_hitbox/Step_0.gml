if (!instance_exists(hitbox_belongs_to)) {
	instance_destroy();
}
if (instance_exists(hitbox_belongs_to)) {
	with (hitbox_belongs_to) {
		other.x = x;
		other.y = y;
	}
}