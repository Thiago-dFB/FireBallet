firing_delay = firing_delay -1;
if (mouse_check_button(mb_left) and (firing_delay < 0)) {
	firing_delay = 5;
	with (instance_create_layer(x, y, "Bullets", obj_Bullet)) {
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}
}