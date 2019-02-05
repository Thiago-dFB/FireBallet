if (wielding != noone){
	instance_destroy(wielding)
}
scr_createCorpse(obj_PlayerCorpse)

with (obj_GameController){
	alarm_set(1, 2*room_speed)
}