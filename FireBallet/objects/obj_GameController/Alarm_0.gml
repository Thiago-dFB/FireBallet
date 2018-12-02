/// @description Send next wave
if (instance_exists(player)){
	scr_prototypeSpawn(obj_Rifleman, player)
	interval = lerp(interval,minInt,lerpFactor)
	alarm_set(0, interval)	
}

