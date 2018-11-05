player = instance_create_layer(640,640,"Actors",obj_Player)
with(player){
	input = 0
}

camera = instance_create_layer(0,0,"Controllers",obj_Camera)
with(camera){
	follow = other.player
}

with (instance_create_layer(640,600,"Actors",obj_Enemy)){
	target = other.player
}