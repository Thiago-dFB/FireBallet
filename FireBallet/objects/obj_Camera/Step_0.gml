//Destination
var sumX=0, sumY=0, ratio=0
if (instance_exists(follow)){
	sumX += follow.x*10
	sumY += follow.y*10
	ratio += 10
	with(obj_Enemy){
		sumX += x*camWeight
		sumY += y*camWeight
		ratio += camWeight
		camWeight = lerp(camWeight,1,camLerpT)
	}
	destX = sumX/ratio
	destY = sumY/ratio
}


x = lerp (x, destX, followSp)
y = lerp (y, destY, followSp)

if (snapToPlayer && instance_exists(follow)){
	x = clamp (x, follow.x-viewHalfWid+buff, follow.x+viewHalfWid-buff)
	y = clamp (y, follow.y-viewHalfHei+buff, follow.y+viewHalfHei-buff)
}

// ScreenShake
var currMagnitude = lerp(0, shakeMagnitude, shakeRemain)
x += random_range(-currMagnitude,currMagnitude);
y += random_range(-currMagnitude,currMagnitude);
shakeRemain = max(0, shakeRemain-1/shakeLength)

camera_set_view_pos(cam, x - viewHalfWid, y - viewHalfHei)