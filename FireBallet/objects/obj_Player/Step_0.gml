switch (input){
	case 0:
		scr_playerInput_MK()
		break
	case 1:
	case 2:
	case 3:
	case 4:
		scr_playerInput_Ctrl()
		break
	default:
		xAxis = 0
		yAxis = 0
		image_angle = 0
}

//Room restart
if (keyboard_check(ord("R"))) game_restart()
