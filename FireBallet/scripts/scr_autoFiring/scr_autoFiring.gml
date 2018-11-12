if (firing_delay < cooldown){
	firing_delay = firerate+cooldown;
	instance_create_layer(x_firing_pos, y_firing_pos, "Weapons", obj_gunFireAnim);
	scr_createProjectile(argument0, other.image_angle + 10);
	scr_createProjectile(argument0, other.image_angle);
	scr_createProjectile(argument0, other.image_angle - 10);
}