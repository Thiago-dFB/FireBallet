//keyboard input
var press_left = keyboard_check(ord("A"))
var press_right = keyboard_check(ord("D"))
var press_up = keyboard_check(ord("W"))
var press_down = keyboard_check(ord("S"))

//axis from keyboard
xAxis = press_right - press_left
yAxis = press_down - press_up

//direction from mouse position
image_angle = point_direction(x,y,mouse_x,mouse_y)