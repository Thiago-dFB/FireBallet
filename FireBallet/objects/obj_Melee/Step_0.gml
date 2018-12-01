var coll = collision_circle(x,y,radius,obj_Actor,false,false)
if (coll != noone && coll != sender){
	with (coll) {
		scr_wasHit()
	}
	instance_destroy();
}
