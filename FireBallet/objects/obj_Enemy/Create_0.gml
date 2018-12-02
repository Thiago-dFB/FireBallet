//obj_Entity
//	xVel
//	yVel
//	frict
//obj_Actor
//	xAxis
//	yAxis
//	maxVel
//	accel
//	wielding
event_inherited()

target = noone
should_look = true
hp = 100
met_stateAction = scr_Enemy
met_stateTransition = noone

state = -1 //inert

camWeight = 0
camLerpT = 1