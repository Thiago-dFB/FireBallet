shader_set(shd_hit)
shader_set_uniform_f(shader_get_uniform(shd_hit, "hit"), wasHit)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1.0)
shader_reset()