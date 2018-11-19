if (firing_delay < cooldown){
	firing_delay = firerate+cooldown;
	for (var i = 0; i < array_length_1d(proj_dir); i += 1){
		ScreenShake(2,10);
		var dispersal = image_angle + proj_dir[i]
		with (instance_create_layer(x_firing_pos, y_firing_pos, "Projectiles", firepower)) {
			sender = argument0;
			direction = dispersal
			image_angle = dispersal
		}
	}
}