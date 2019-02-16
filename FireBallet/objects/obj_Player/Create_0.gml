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
accel = 0.15
wielding = instance_create_layer(x,y, "Weapons", obj_Shotgun)
input = -1
axisTest = false
hp = 100

god = false

originX = x
originY = y
buffer = 32

aimX = 0.1
aimY = 0.1
aimXdest = 0.1
aimYdest = 0.1

dash = 120
dashMax = 120
dashCost = 60