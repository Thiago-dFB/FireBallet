if (instance_exists(target) && should_look){
	var tgtX = target.x
	var tgtY = target.y
	image_angle = point_direction(x,y,tgtX,tgtY)
}

event_inherited()