if (instance_exists(target)){
	if (should_look){
		var tgtX = target.x
		var tgtY = target.y
		image_angle = point_direction(x,y,tgtX,tgtY)
	}
} else {
	if (instance_number(obj_Player) > 0 && state == (-1)){
		//target reset
		target = obj_Player
		state = 0
		image_angle = point_direction(x,y,target.x,target.y)
		script_execute(met_stateAction)
	} else if (state == 0) {
		//target lost
		state = (-1)
		script_execute(met_stateAction)
	}
}

event_inherited()