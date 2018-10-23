//keyboard input
press_left = keyboard_check(ord("A"))
press_right = keyboard_check(ord("D"))
press_up = keyboard_check(ord("W"))
press_down = keyboard_check(ord("S"))

//axis from keyboard
xAxis = press_right - press_left
yAxis = press_down - press_up

//calculate xVel
if (xAxis != 0.0) {
	xVel += accel*xAxis
	xVel = clamp(xVel, -maxVel, maxVel)
} else {
	if (xVel < 0) {
		xVel += accel
		if (xVel >= 0) xVel = 0
	} else {
		xVel -= accel
		if (xVel <= 0) xVel = 0
	}
}
//calculate yVel
if (yAxis != 0.0) {
	yVel += accel*yAxis
	yVel = clamp(yVel, -maxVel, maxVel)
} else {
	if (yVel < 0) {
		yVel += accel*frict
		if (yVel >= 0) yVel = 0
	} else {
		yVel -= accel*frict
		if (yVel <= 0) yVel = 0
	}
}
//normalize and apply delta
if (xVel != 0 || yVel != 0){
	var xVelN = xVel*abs(xVel)/sqrt(xVel*xVel+yVel*yVel)
	var yVelN = yVel*abs(yVel)/sqrt(xVel*xVel+yVel*yVel)
	
	x += xVelN
	y += yVelN
}

//
image_angle = point_direction(x,y,mouse_x,mouse_y)