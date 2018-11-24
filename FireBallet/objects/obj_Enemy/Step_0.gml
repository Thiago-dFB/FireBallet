event_inherited();

if (target == noone){
	if (instance_number(obj_Player) > 0){
		target = obj_Player
		inert = false
		state = 0
		image_angle = point_direction(x,y,target.x,target.y)
		scr_Rifleman()
	} else {
		inert = true
	}
}

if (inert) {
	xAxis = 0
	yAxis = 0
	should_fire = false
}

if (hp <= 0){
	instance_destroy()
}