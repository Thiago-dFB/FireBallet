//keyboard input
press_left = keyboard_check(ord("A"))
press_right = keyboard_check(ord("D"))
press_up = keyboard_check(ord("W"))
press_down = keyboard_check(ord("S"))

//axis from keyboard
xAxis = press_right - press_left
yAxis = press_down - press_up

scr_actorMovement()

image_angle = point_direction(x,y,mouse_x,mouse_y)