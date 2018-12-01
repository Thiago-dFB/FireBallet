/// @description Behavior: Bump and Melee
if (state == 0){
	image_angle = -point_direction(x,y,other.x,other.y)
	scr_Rifleman()
}

var dist = 24
if (melee){
	with (instance_create_layer(x+lengthdir_x(30,image_angle), y+lengthdir_y(30,image_angle), "Projectiles", obj_Bayonet)) {
		sender = other;
		direction = other.image_angle
		image_angle = other.image_angle
	}
	state = 0
	scr_Rifleman()
}