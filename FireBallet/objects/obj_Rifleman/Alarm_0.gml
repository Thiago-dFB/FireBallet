/// @description Behavior: Cycle end
switch state {
	case 0: //end walk
		if (random(aggro) > initAggro){
			aggro = initAggro
			state = 1
		} else {
			aggro += aggroInc
		}
		scr_Rifleman()
		break
	case 1: //end aim
		state = 2
		scr_Rifleman()
		break
	case 2: //end fire
		state = 0
		scr_Rifleman()
		break
	case 3: //bayonet charge
		state = 0
		scr_Rifleman()
		break
}