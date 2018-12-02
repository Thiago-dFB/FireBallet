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
//obj_Enemy
//	target
//	should_look
//	hp
//	met_stateAction
//	met_stateTransition
event_inherited()
wielding = instance_create_layer(x,y,"Weapons",obj_Rifle)
maxVel = 1
frict = 1
hp = 20
met_stateAction = scr_Rifleman
met_stateTransition = scr_Rifleman_trans

//State variables
initAggro = 20
aggro = initAggro
aggroInc = 5
showAim = false
aimColorCycle = 0