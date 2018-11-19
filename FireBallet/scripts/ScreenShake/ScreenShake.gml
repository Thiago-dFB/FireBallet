/// @desc ScreenShake(magnitude,frames)
/// args0 Magnitude sets the strenght of the shake (radius in pixels)
/// args1 Frames sets the length of the shake in frames (60 = 1 second at 60fps)

with (obj_Camera)
{
	if (argument0 > shakeRemain)
	{
		shakeMagnitude = argument0;
		shakeRemain= argument0;
		shakeLength = argument1;
	}
}