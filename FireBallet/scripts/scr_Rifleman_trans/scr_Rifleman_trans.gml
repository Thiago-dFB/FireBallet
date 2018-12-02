switch state {
	case -1: //inert
		break;
	case 0: //end walk
		if (random(aggro) > initAggro){
			aggro = initAggro
			state = 1
		} else if (instance_exists(target)) {
			if (point_distance(x,y,target.x,target.y) < 100) image_angle += 180
			aggro += aggroInc
		}
		script_execute(met_stateAction)
		break
	case 1: //end aim
		state = 2
		script_execute(met_stateAction)
		break
	case 2: //end fire
		state = 0
		script_execute(met_stateAction)
		break
}