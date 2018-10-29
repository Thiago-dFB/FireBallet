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

//Room loop
if (x > room_width+sprite_width) x = -sprite_width
if (x < -sprite_width) x = room_width+sprite_width
if (y > room_height+sprite_height) y = -sprite_height
if (y < -sprite_height) y = room_height+sprite_height
//Room restart
if (keyboard_check(ord("R"))) game_restart()
