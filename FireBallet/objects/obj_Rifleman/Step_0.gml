event_inherited();

if (!instance_exists(target)){
	if (instance_number(obj_Player) > 0){
		target = obj_Player
		inert = false
		state = 0
		image_angle = point_direction(x,y,target.x,target.y)
		scr_Rifleman()
	} else {
		inert = true
		state = -1
		scr_Rifleman()
	}
}