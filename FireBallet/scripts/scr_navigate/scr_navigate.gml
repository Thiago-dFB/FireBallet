switch(argument0){
	case NAV_STATE.GOTO: {
		room_goto(argument1)
		break
	}
	case NAV_STATE.NEXT: {
		room_goto_next()
		break
	}
	case NAV_STATE.PREVIOUS: {
		room_goto_previous()
		break
	}
	case NAV_STATE.RESTART: {
		game_restart()
		break
	}
}