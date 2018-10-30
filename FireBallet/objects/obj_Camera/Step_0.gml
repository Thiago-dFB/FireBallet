//Destination
if (instance_exists(follow)){
	destX = follow.x
	destY = follow.y
}

x += (destX - x) * followSp
y += (destY - y) * followSp

if (snapToRoom){
	x = clamp (x, viewHalfWid, room_width-viewHalfWid)
	y = clamp (y, viewHalfHei, room_height-viewHalfHei)
}

camera_set_view_pos(cam, x - viewHalfWid, y - viewHalfHei)