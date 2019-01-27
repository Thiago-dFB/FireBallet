event_inherited();

//target reset
if (!instance_exists(target)){
	if (instance_number(obj_Player) > 0){
		target = obj_Player
		state = 0
		image_angle = point_direction(x,y,target.x,target.y)
		script_execute(met_stateAction)
	} else {
		state = -1
		script_execute(met_stateAction)
	}
}