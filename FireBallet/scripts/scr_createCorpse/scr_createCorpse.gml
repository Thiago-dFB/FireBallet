///scr_createCorpse(corpseType)
with instance_create_layer(x,y,"Corpses", argument0) {
	image_angle = other.image_angle
	xVel = other.xVel
	yVel = other.yVel
}