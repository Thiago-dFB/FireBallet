event_inherited();
if (instance_exists(target)){
	var color
	if (aimColorCycle == 0){
		color = c_red
	} else {
		color = c_orange
	}
	var aimDist = point_distance(x,y,target.x,target.y) + 600;
	if (showAim) draw_line_color(
		x, y,
		x+lengthdir_x(aimDist,image_angle),
		y+lengthdir_y(aimDist,image_angle),
		color, color)
	aimColorCycle = (++aimColorCycle)%3
}