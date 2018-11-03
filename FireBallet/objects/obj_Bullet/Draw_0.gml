if (place_meeting(x, y, obj_Actor)) {
	draw_sprite(spr_Hit,0,x,y)
	instance_destroy();
} else {
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1.0)
}