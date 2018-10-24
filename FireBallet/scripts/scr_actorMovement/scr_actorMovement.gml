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