//calculate xVel
if (xVel > maxVel || xVel < -maxVel){ //over max speed
	xVel -= accel*sign(xVel)
} else if (xAxis != 0.0) { //accelerating
	if (xAxis/xVel < 0){
		xVel += 5*accel*sign(xAxis)
	} else {
		xVel += accel*sign(xAxis)
	}
	xVel = clamp(xVel, -maxVel*abs(xAxis), maxVel*abs(xAxis))
} else { //stopping
	if (xVel < 0.0) {
		xVel += accel*frict
		if (xVel >= 0.0) xVel = 0.0
	} else {
		xVel -= accel*frict
		if (xVel <= 0.0) xVel = 0.0
	}
}
//calculate yVel
if (yVel > maxVel || yVel < -maxVel){ //over max speed
	yVel -= accel*sign(yVel)
} else if (yAxis != 0.0) { //accelerating
	if (yAxis/yVel < 0){
		yVel += 5*accel*sign(yAxis)
	} else {
		yVel += accel*sign(yAxis)
	}
	yVel = clamp(yVel, -maxVel*abs(yAxis), maxVel*abs(yAxis))
} else { //stopping
	if (yVel < 0.0) {
		yVel += accel*frict
		if (yVel >= 0.0) yVel = 0.0
	} else {
		yVel -= accel*frict
		if (yVel <= 0.0) yVel = 0.0
	}
}
//normalize and apply delta
if (xVel != 0 || yVel != 0){
	var xVelN = xVel*abs(xVel)/sqrt(xVel*xVel+yVel*yVel)
	var yVelN = yVel*abs(yVel)/sqrt(xVel*xVel+yVel*yVel)
	
	x += xVelN
	y += yVelN
}