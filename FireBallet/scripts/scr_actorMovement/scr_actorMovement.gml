var dir = point_direction(0, 0, xAxis, yAxis)
var currVel = point_distance(0, 0, xVel, yVel)

//calculate xVel
if (xAxis != 0) {
	if (abs(currVel) >= maxVel){
		xVel = lerp(xVel, lengthdir_x(maxVel, dir), frict)
	} else {
		xVel += lengthdir_x(accel, dir)
	}
} else {
	xVel = lerp(xVel, 0, frict)
}

//calculate yVel
if (yAxis != 0) {
	if (abs(currVel) >= maxVel){
		yVel = lerp(yVel, lengthdir_y(maxVel, dir), frict)
	} else {
		yVel += lengthdir_y(accel, dir)
	}
} else {
	yVel = lerp(yVel, 0, frict)
}

//apply delta
x += xVel
y += yVel