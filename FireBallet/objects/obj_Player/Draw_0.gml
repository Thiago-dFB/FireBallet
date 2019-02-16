var angle_unif = shader_get_uniform(shd_health,"healthTan")
var color_unif = shader_get_uniform(shd_health,"healthColor")
event_inherited()
shader_set(shd_health)
if (hp > 50) {
	shader_set_uniform_f(color_unif, 0.0, 1.0, 0.0)
} else if (hp <= 50 && hp > 20) {
	shader_set_uniform_f(color_unif, 1.0, 1.0, 0.0)
} else {
	shader_set_uniform_f(color_unif, 1.0, 0.0, 0.0)
}
shader_set_uniform_f(angle_unif, (pi*hp/50)-pi)
draw_sprite(spr_ring, 0, x, y)
shader_reset()

draw_set_color(c_blue)
var aimDist = 900
var squaresize = 5
draw_line(x, y,
	x+lengthdir_x(aimDist,image_angle),
	y+lengthdir_y(aimDist,image_angle))
draw_rectangle(aimX+x-squaresize,
	aimY+y-squaresize,
	aimX+x+squaresize,
	aimY+y+squaresize,
	false)