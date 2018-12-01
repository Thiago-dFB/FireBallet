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
wielding = instance_create_layer(x,y,"Weapons",obj_Rifle)
maxVel = 1
frict = 1
hp = 30

//State variable
initAggro = 20
aggro = initAggro
aggroInc = 5
showAim = false

state = 0