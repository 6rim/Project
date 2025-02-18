event_inherited();
depth_get(-650);

if !instance_exists(oMenu) || !instance_exists(oSettingsMenu) { instance_destroy(); }

if place_meeting(mouse_x,mouse_y,oSliderChild)
{
	slider_active = true;	
}

if slider_active = true
{
	x = mouse_x;
	x = clamp(x,slider_zero,slider_max);
	posX = x;
}	

slider_current = (posX-xstart)/(slider_max-xstart)*100

