if (shoot_once) {
	var collided = false
	for (var i = 0; i < range && !collided; i++){
		x = destX
		y = destY
		destX = x + lengthdir_x(50,direction)
		destY = y + lengthdir_y(50,direction)

		var coll = collision_line(x,y,destX,destY,obj_Actor,false,false)
		if (coll != noone){
			collided = true
			with (coll){
				scr_wasHit()
				scr_damage()
				scr_knockback(other.knockback)
			}
		}
	}
	shoot_once = false
}

