draw_set_font(score_font)
draw_set_valign(fa_top)
draw_set_color(c_white)
for (var i = 0; i < 10; i++){
	var place = i+1
	var value = scoreboard[i]
	var xx
	var yy = score_y + (score_itemheight * i * 1.5)
	draw_set_halign(fa_right)
	xx = placement_x
	draw_text(xx,yy,place)
	draw_set_halign(fa_left)
	xx = score_x
	draw_text(xx,yy,value)
}