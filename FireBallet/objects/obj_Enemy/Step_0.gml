event_inherited();

if (hp <= 0){
	if (wielding != noone){
		instance_destroy(wielding)
	}
	instance_destroy()
}