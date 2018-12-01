var xNorm = lengthdir_x(1, argument0)
var yNorm = lengthdir_y(1, argument0)

if (abs(xNorm/yNorm) > 1){
	xAxis = sign(xNorm)
	yAxis = yNorm/abs(xNorm)
} else {
	xAxis = xNorm/abs(yNorm)
	yAxis = sign(yNorm)
}