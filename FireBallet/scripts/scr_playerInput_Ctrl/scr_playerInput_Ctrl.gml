var deadzone = 0.1
var lStickX = gamepad_axis_value(input-1, gp_axislh)
var lStickY = gamepad_axis_value(input-1, gp_axislv)
var rStickX = gamepad_axis_value(input-1, gp_axisrh)
var rStickY = gamepad_axis_value(input-1, gp_axisrv)

//get axis from left stick
if (abs(lStickX) > deadzone || abs(lStickY) > deadzone){
	xAxis = lStickX*lStickX*sign(lStickX)
	yAxis = lStickY*lStickY*sign(lStickY)
} else {
	xAxis = 0
	yAxis = 0
}

//get direction from right stick
if (abs(rStickX) > deadzone || abs(rStickY) > deadzone){
	image_angle = point_direction(0,0, rStickX, rStickY)
}