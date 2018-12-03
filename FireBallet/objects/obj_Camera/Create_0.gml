cam = view_camera[0]
follow = pointer_null
viewHalfWid = camera_get_view_width(cam) / 2
viewHalfHei = camera_get_view_height(cam) / 2

destX = x
destY = y

followSp = 1; //1 >= n > 0

snapToPlayer = true;

// ScreenShake
shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;
buff = 32;
