var collided = false
while (range > 0 && !collided) {
	x = destX
	y = destY
	destX = x + lengthdir_x(50,direction)
	destY = y + lengthdir_y(50,direction)
	var coll = collision_line(x,y,destX,destY,obj_Actor,false,false)
	if (coll != noone){
		with (coll){
			scr_wasHit()
		}
		collided = true
	}
	range--
}