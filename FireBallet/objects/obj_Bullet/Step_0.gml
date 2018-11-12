var destX = x + lengthdir_x(speed,direction)
var destY = y + lengthdir_y(speed,direction)
var dir = point_direction(x, y, obj_Actor.x, obj_Actor.y)
var coll = collision_line(x,y,destX,destY,obj_Actor,false,false)
if (coll != noone && coll != sender){
	with (coll){
		scr_wasHit()
		hp -= other.damage
		scr_knockback(obj_Enemy, dir)
	}
	instance_destroy();
}
