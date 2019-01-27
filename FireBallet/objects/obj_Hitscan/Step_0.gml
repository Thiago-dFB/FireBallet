if (fire_once) {
	var hitmap = ray_cast([x,y],direction,obj_Actor,true,true,1000)
	var coll = ds_map_find_value(hitmap, "object")
	var dest = ds_map_find_value(hitmap, "hitPosition")
	ds_map_destroy(hitmap)
	if (coll != noone){
		destX = dest[0]
		destY = dest[1]
		with (coll){
			scr_wasHit()
		}
	} else {
		destX += lengthdir_x(1000,direction)
		destY += lengthdir_y(1000,direction)
	}
	fire_once = false
}