//obj_Bullet
//	alarm[0]
//	speed
//	sender
//	minDmg
//	maxDmg
//	knockback
event_inherited()
knockback = 0.5
alarm[0] = room_speed * 0.1;
speed = 0

range = 20 //number of times the bullet iterates

destX = x
destY = y
shoot_once = true