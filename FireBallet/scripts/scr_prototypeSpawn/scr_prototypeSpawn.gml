///scr_prototypeSpawn(enemyType, playerRef)

var playerRef = argument1
var spawnAngle = random(360)
var wave = [0]

for (var i = 0; i < array_length_1d(wave); i += 1){
	var spawnX = playerRef.x + lengthdir_x(450, spawnAngle+wave[i])
	var spawnY = playerRef.y + lengthdir_y(450, spawnAngle+wave[i])
	with instance_create_layer(spawnX,spawnY,"Actors",argument0) {
		camLerpT = power(abs(angle_difference(playerRef.image_angle,spawnAngle))/180,2)
	}
}



