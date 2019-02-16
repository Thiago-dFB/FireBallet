event_inherited()
switch (input){
	case 0:
		scr_playerInput_MK()
		break
	case 1:
	case 2:
	case 3:
	case 4:
		scr_playerInput_Ctrl()
		break
	default:
		xAxis = 0
		yAxis = 0
		image_angle = 0
}

if (mouse_check_button(mb_left)){
	should_fire = true
} else {
	should_fire = false
}

//infinite room
if (x < originX-buffer){
	scr_edgeLoop(buffer,0)
} else if (x > originX+buffer){
	scr_edgeLoop(-buffer,0)
} else if (y < originY-buffer){
	scr_edgeLoop(0,buffer)
} else if (y > originY+buffer){
	scr_edgeLoop(0,-buffer)
}

dash++
dash = min(dash, dashMax)

if (keyboard_check_pressed(vk_space) && dash > dashCost){
	var dir = point_direction(0,0,xAxis,yAxis)
	xVel = lengthdir_x(maxVel*2, dir)
	yVel = lengthdir_y(maxVel*2, dir)
	dash -= dashCost
}