event_inherited();
if (instance_exists(target)){
	var aimDist = point_distance(x,y,target.x,target.y) + 600;
	if (showAim) draw_line(x,y,x+lengthdir_x(aimDist,image_angle),y+lengthdir_y(aimDist,image_angle))
}