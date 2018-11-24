switch state {
	case 0: //walk
		var rand = random_range(-1,1)
		var dir = 4*abs(rand) - 4*rand*rand
		scr_squareAxis(image_angle+dir)
}