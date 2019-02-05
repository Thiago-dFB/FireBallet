if (room == room_Home){
	visible = true
	if (!file_exists(SAVEFILE)){
		scoreboard = [0,0,0,0,0,0,0,0,0,0]
		ini_open(SAVEFILE)
		for (var i = 0; i < 10; i++){
			ini_write_real("score", i, 0)
		}
		ini_close()
	} else {
		ini_open(SAVEFILE)
		for (var i = 0; i < 10; i++){
			ini_write_real("score", i, scoreboard[i])
		}
		ini_close()
	}
} else {
	visible = false
}