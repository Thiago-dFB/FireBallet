if (firing_delay < cooldown){
	firing_delay = firerate+cooldown;
	with (instance_create_layer(x, y, "Bullets", firepower)) {
		direction = other.image_angle;
		image_angle = direction;
		x += lengthdir_x(other.offset_dist,direction)
		y += lengthdir_y(other.offset_dist,direction)
		sender = argument0
	}
}