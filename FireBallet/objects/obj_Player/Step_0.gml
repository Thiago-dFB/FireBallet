switch (input){
	//case -1:
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


scr_actorMovement()


//Room loop
if (x > room_width+sprite_width) x = -sprite_width
if (x < -sprite_width) x = room_width+sprite_width
if (y > room_height+sprite_height) y = -sprite_height
if (y < -sprite_height) y = room_height+sprite_height
//Room restart
if (keyboard_check(ord("R"))) game_restart()
