/// @description Behavior: Bump
if (state == 0){
	image_angle = -point_direction(x,y,other.x,other.y)
	script_execute(met_stateAction)
}