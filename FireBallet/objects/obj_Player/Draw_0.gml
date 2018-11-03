event_inherited()
if(axisTest){
	draw_text(x+20,y,gamepad_axis_value(0, gp_axislh))
	draw_text(x,y+20,gamepad_axis_value(0, gp_axislv))
}