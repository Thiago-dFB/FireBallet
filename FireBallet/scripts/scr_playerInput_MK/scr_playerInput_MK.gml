//keyboard input
var press_left = keyboard_check(ord("A"))
var press_right = keyboard_check(ord("D"))
var press_up = keyboard_check(ord("W"))
var press_down = keyboard_check(ord("S"))

//axis from keyboard
xAxis = press_right - press_left
yAxis = press_down - press_up

//direction from mouse delta
var win_half_w = window_get_width()/2
var win_half_h = window_get_height()/2
var mouselerp = 0.5
aimXdest += window_mouse_get_x() - win_half_w
aimYdest += window_mouse_get_y() - win_half_h
window_mouse_set(win_half_w, win_half_h)
aimX = lerp(aimX,aimXdest,mouselerp)
aimY = lerp(aimY,aimYdest,mouselerp)
image_angle = point_direction(0,0,aimX,aimY)