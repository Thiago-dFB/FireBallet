//Destination
if (instance_exists(follow)){
	destX = follow.x
	destY = follow.y
}

x += (destX - x) * followSp
y += (destY - y) * followSp

if (snapToRoom){
	x = clamp (x, viewHalfWid+buff, room_width-viewHalfWid-buff)
	y = clamp (y, viewHalfHei+buff, room_height-viewHalfHei-buff)
}

// ScreenShake
var currMagnitude = lerp(0, shakeMagnitude, shakeRemain)
x += random_range(-currMagnitude,currMagnitude);
y += random_range(-currMagnitude,currMagnitude);
shakeRemain = max(0, shakeRemain-1/shakeLength)

camera_set_view_pos(cam, x - viewHalfWid, y - viewHalfHei)