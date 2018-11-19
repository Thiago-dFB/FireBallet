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
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);
shakeRemain = max(0,shakeRemain-((1/shakeLength)*shakeMagnitude));

camera_set_view_pos(cam, x - viewHalfWid, y - viewHalfHei)