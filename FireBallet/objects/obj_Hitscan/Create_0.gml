event_inherited()
speed = 0
range = 1000
var destX = x + lengthdir_x(speed,range)
var destY = y + lengthdir_y(speed,range)

var coll = collision_line_first(x,y,destX,destY,obj_Actor,false,false)
if (coll != noone){
	with (coll){
		scr_wasHit()
		hp -= other.damage
	}
}