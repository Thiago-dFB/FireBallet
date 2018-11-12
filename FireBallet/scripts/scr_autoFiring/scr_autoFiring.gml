if (firing_delay < cooldown){
	image_index = 0;
	image_speed = spr_gunFire.image_speed;
	firing_delay = firerate+cooldown;
	// var originX = x + lengthdir_x(offset_dist,image_angle)
	// var originY = y + lengthdir_y(offset_dist,image_angle)
	
	with (instance_create_layer(x, y, "Projectiles", firepower)) {
		direction = other.image_angle;
		image_angle = direction;
		sender = argument0
	}
}