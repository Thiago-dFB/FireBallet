draw_set_color(c_red)
draw_circle(x,y,radius,true)
draw_set_color(c_white)
draw_circle(x1,y1,radius1,true)
with(obj_Player){
	if (point_distance(x,y,other.x1,other.y1) > other.radius1) {
		var centerDir = point_direction(x,y,other.x1,other.y1)
		var edgeDist = point_distance(x,y,other.x1,other.y1) - other.radius1
		var edgeX = x + lengthdir_x(edgeDist,centerDir)
		var edgeY = y + lengthdir_y(edgeDist,centerDir)
		draw_line(x,y,edgeX,edgeY)
	}
}