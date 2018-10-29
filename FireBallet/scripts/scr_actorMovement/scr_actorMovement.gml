var dir = point_direction(0, 0, xAxis, yAxis)
var weight = max (abs(xAxis),abs(yAxis))
var currVel = point_distance(0, 0, xVel, yVel)

//calculate xVel
if (xAxis != 0) {
	if (abs(currVel) >= maxVel*weight){
		xVel = lerp(xVel, lengthdir_x(maxVel*weight, dir), frict)
	} else {
		xVel += lengthdir_x(accel, dir)
	}
} else {
	xVel = lerp(xVel, 0, frict)
}

//calculate yVel
if (yAxis != 0) {
	if (abs(currVel) >= maxVel*weight){
		yVel = lerp(yVel, lengthdir_y(maxVel*weight, dir), frict)
	} else {
		yVel += lengthdir_y(accel, dir)
	}
} else {
	yVel = lerp(yVel, 0, frict)
}

//apply delta
x += xVel
y += yVel