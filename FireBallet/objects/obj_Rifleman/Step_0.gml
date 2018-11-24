event_inherited();

var meleeDist = 50

if(place_meeting(x+lengthdir_x(meleeDist,image_angle),y+lengthdir_y(meleeDist,image_angle),target) && state == 0){
	state = 3
	scr_Rifleman()
}

if(state == 3 && place_meeting(x+lengthdir_x(meleeDist,image_angle),y+lengthdir_y(meleeDist,image_angle),target)){
	alarm_set(0, room_speed * 0.5)
}