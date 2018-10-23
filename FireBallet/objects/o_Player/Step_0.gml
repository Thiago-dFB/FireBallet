press_left = keyboard_check(ord("A"))
press_right = keyboard_check(ord("D"))
press_up = keyboard_check(ord("W"))
press_down = keyboard_check(ord("S"))

xAxis = press_right - press_left
yAxis = press_down - press_up

//get direction to accelerate
var xAcc = sign(xAxis*1.5 - sign(xVel))
var yAcc = sign(yAxis*1.5 - sign(yVel))

var accMagn = 0
var xAccN = 0
var yAccN = 0
if (xAcc != 0 || yAcc != 0){
	//get accel vector magnitude
	accMagn = sqrt(xAcc*xAcc+yAcc*yAcc)
	//normalize acceleration
	xAccN = xAcc/accMagn
	yAccN = yAcc/accMagn
}

//raw velocity
var xVelR = xVel + xAccN*accel
var yVelR = yVel + yAccN*accel

var velMagn = 0
if (xVelR != 0 || yVelR != 0){
	//get vel vector magnitude
	velMagn = sqrt(xVelR*xVelR+yVelR*yVelR)
	//clip velocity
	if (velMagn > walkSpeed){
		xVel = xVelR/(velMagn/walkSpeed)
		yVel = yVelR/(velMagn/walkSpeed)
	} else {
		xVel = xVelR
		yVel = yVelR
	}
}

if (xAxis == 0 && xVel < 1){
	xVel = 0
}
if (yAxis == 0 && yVel < 1){
	yVel = 0
}

x += xVel
y += yVel

image_angle = point_direction(x,y,mouse_x,mouse_y)