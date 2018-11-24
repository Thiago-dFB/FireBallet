killcount = 0

player = instance_create_layer(640,640,"Actors",obj_Player)
with(player){
	input = 0
}

camera = instance_create_layer(0,0,"Controllers",obj_Camera)
with(camera){
	follow = other.player
}

instance_create_layer(640,500,"Actors",obj_Rifleman)