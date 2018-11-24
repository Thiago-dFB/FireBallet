event_inherited();

if (target == noone){
	if (obj_Player != noone){
		target = obj_Player
		inert = false
	} else {
		inert = true
	}
}

if (inert) {
	xAxis = 0
	yAxis = 0
	should_fire = false
}

if (hp <= 0){
	if (wielding != noone){
		instance_destroy(wielding)
	}
	instance_destroy()
	obj_GameController.killcount++
}