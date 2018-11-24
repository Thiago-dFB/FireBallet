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
wielding = instance_create_layer(x,y, "Weapons", obj_Shotgun)
input = -1
axisTest = false
hp = 100