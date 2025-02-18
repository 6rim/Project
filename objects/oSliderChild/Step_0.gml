event_inherited();
depth_get(-500);

if slider_active = true
{
	x = mouse_x;
	x = clamp(x,slider_zero,slider_max)
	posX = x;
}	

