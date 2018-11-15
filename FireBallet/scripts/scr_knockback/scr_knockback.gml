var knockbackEntity = argument0;
var bullet = argument1;
bulletDirection = bullet.image_angle
knockbackSpeed = 5
knockbackEntity.x += lengthdir_x(knockbackSpeed, bulletDirection)
knockbackEntity.y += lengthdir_y(knockbackSpeed, bulletDirection)