if (fire_once) {
	var hitmap = ray_cast([x,y],direction,obj_Actor,true,true,1000)
	var coll = ds_map_find_value(hitmap, "object")
	var dest = ds_map_find_value(hitmap, "hitPosition")
	destX = dest[0]
	destY = dest[1]
	ds_map_destroy(hitmap)
	if (coll != noone){
		with (coll){
			scr_wasHit()
		}
	}
	fire_once = false
}