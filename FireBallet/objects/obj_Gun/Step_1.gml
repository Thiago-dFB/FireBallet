x = obj_Player.x;
y = obj_Player.y;

fire_angle = point_direction(x, y, mouse_x, mouse_y);

firing_delay = firing_delay -1;
if (mouse_check_button(mb_left) and (firing_delay < 0)) {
	firing_delay = 5;
	with (instance_create_layer(x, y, "Bullets", obj_Bullet)) {
		speed = 25;
		direction = other.fire_angle;
		image_angle = direction;
	}
}