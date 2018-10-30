draw_sprite_ext(spr_Player_PH,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1.0)
if(axisTest){
	draw_text(x+20,y,gamepad_axis_value(0, gp_axislh))
	draw_text(x,y+20,gamepad_axis_value(0, gp_axislv))
}