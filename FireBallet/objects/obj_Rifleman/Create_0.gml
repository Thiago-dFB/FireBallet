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
event_inherited()
wielding = instance_create_layer(x,y,"Weapons",obj_Gun)
maxVel = 1
frict = 1

//State variable
initAggro = 10
aggro = initAggro
aggroInc = 1
showAim = false