if (firing_delay < cooldown){
	firing_delay = firerate+cooldown;
	var originX = x + lengthdir_x(offset_dist,image_angle)
	var originY = y + lengthdir_y(offset_dist,image_angle)
	with (instance_create_layer(originX, originY, "Projectiles", firepower)) {
		direction = other.image_angle;
		image_angle = direction;
		sender = argument0
	}
}