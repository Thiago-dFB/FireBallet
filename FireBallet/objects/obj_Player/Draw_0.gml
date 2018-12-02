event_inherited()
if (hp > 50) {
	draw_set_color(c_green)
} else if (hp <= 50 && hp > 20) {
	draw_set_color(c_yellow)
} else {
	draw_set_color(c_red)
}
draw_text(x-10,y+30,hp)
draw_set_color(c_white)
var aimDist = 900
draw_line_color(
	x, y,
	x+lengthdir_x(aimDist,image_angle),
	y+lengthdir_y(aimDist,image_angle),
	c_blue, c_blue)