with (instance_create_layer(x_firing_pos, y_firing_pos, "Projectiles", firepower)) {
	direction = other.image_angle;
	image_angle = direction;
	sender = argument0
}