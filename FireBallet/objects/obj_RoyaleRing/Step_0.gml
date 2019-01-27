if (lerpFactor >= 1){
	scr_newShrink()
}
lerpFactor += 1/lerpDuration

radius = lerp(radius0,radius1,lerpFactor)
x = lerp(x0,x1,lerpFactor)
y = lerp(y0,y1,lerpFactor)

with (obj_Player) {
	if (!god && point_distance(x,y,other.x,other.y) > other.radius) hp -= 0.1
	if (hp <= 0) instance_destroy()
}