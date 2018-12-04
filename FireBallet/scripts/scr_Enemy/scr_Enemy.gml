switch state {
	case -1: //inert
		should_look = false
		break
	case 0: //follow
		should_look = true
		break
}