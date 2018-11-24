/// @description Behavior: Bump
if (state == 0){
	image_angle = -point_direction(x,y,other.x,other.y)
	scr_Rifleman()
}

if (melee){
	with (instance_create_layer(x, y, "Projectiles", obj_Melee)) {
		sender = other;
		direction = other.image_angle
		image_angle = other.image_angle
	}
}