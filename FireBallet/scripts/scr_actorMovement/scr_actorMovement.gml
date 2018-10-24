//calculate xVel
if (xAxis != 0.0) {
	xVel += accel*sign(xAxis)
	xVel = clamp(xVel, -maxVel*abs(xAxis), maxVel*abs(xAxis))
} else {
	if (xVel < 0.0) {
		if (yAxis == 0.0){
			xVel += accel*frict
		} else {
			xVel += accel
		}
		if (xVel >= 0.0) xVel = 0.0
	} else {
		if (yAxis == 0.0){
			xVel -= accel*frict
		} else {
			xVel -= accel
		}
		if (xVel <= 0.0) xVel = 0.0
	}
}
//calculate yVel
if (yAxis != 0.0) {
	yVel += accel*sign(yAxis)
	yVel = clamp(yVel, -maxVel*abs(yAxis), maxVel*abs(yAxis))
} else {
	if (yVel < 0.0) {
		if (xAxis == 0.0){
			yVel += accel*frict
		} else {
			yVel += accel
		}
		if (yVel >= 0.0) yVel = 0.0
	} else {
		if (xAxis == 0.0){
			yVel -= accel*frict
		} else {
			yVel -= accel
		}
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