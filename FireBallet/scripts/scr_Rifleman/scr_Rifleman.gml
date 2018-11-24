switch state {
	case 0: //walk
		should_look = true
		should_fire = false
		showAim = false
		melee = false
		maxVel = 1
		scr_squareAxis(image_angle+random_range(-60,60))
		alarm_set(0, room_speed * 0.5)
		break
	case 1: //aim
		xAxis = 0
		yAxis = 0
		should_look = false
		showAim = true
		alarm_set(0, room_speed * 0.2)
		break
	case 2: //fire
		should_fire = true
		alarm_set(0, room_speed * 0.1)
		break
	case 3: //bayonet charge
		should_look = false
		melee = true
		maxVel = 3
		scr_squareAxis(image_angle)
		break
}