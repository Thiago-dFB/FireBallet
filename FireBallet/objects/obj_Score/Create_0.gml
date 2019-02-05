gui_width = display_get_gui_width()
gui_height = display_get_gui_height()
gui_score_margin = 8
gui_top_margin = 32
gui_half_w = gui_width/2
gui_half_h = gui_height/2

placement_x = gui_half_w - gui_score_margin
score_x = gui_half_w + gui_score_margin
score_y = gui_top_margin
score_font = font_general
score_itemheight = font_get_size(font_general)

scoreboard = []
if (file_exists(SAVEFILE)){
	ini_open(SAVEFILE)
	for (var i = 0; i < 10; i++){
		scoreboard[i] = ini_read_real("score", i, 0);
	}
	ini_close()
}
