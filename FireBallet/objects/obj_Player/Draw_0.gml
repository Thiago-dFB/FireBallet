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