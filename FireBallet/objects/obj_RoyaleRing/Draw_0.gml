draw_circle_color(x,y,radius,c_red,c_red,true)
draw_circle_color(x1,y1,radius1,c_white,c_white,true)
with(obj_Player){
	if (point_distance(x,y,other.x1,other.y1) > other.radius1) {
		var centerDir = point_direction(x,y,other.x1,other.y1)
		var edgeDist = point_distance(x,y,other.x1,other.y1) - other.radius1
		var edgeX = x + lengthdir_x(edgeDist,centerDir)
		var edgeY = y + lengthdir_y(edgeDist,centerDir)
		draw_line(x,y,edgeX,edgeY)
	}
}