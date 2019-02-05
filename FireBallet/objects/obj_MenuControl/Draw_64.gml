draw_set_color(c_white)
draw_set_font(menu_font)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

for (var i = 0; i < array_length_1d(menu_items); i++){
	var xx = gui_half_w
	var yy = gui_height - (i+1)*1.5*menu_itemheight
	var txt = menu_items[i]
	draw_text(xx,yy,txt)
}