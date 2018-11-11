if (shoot_once) {
	destX = x + lengthdir_x(range,direction)
	destY = y + lengthdir_y(range,direction)

	var coll = collision_line_first(x,y,destX,destY,obj_Actor,false,false)
	if (coll != noone){
		with (coll){
			scr_wasHit()
			hp -= other.damage
		}
	}
	shoot_once = false
}

