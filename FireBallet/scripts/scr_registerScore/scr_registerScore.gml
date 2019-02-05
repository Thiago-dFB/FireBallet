with(obj_Score){
	if (argument0 > scoreboard[9]){
		scoreboard[9] = argument0
		for (var i = 9; i > 0 && scoreboard[i] > scoreboard[i-1]; i--){
			var temp = scoreboard[i-1]
			scoreboard[i-1] = scoreboard[i]
			scoreboard[i] = temp
		}
	}
}