//event_inherited();
depth_get(-650);

if !instance_exists(oMenu) || !instance_exists(oSettingsMenu) { instance_destroy(); }

scr_PlayerInput();

if (point_distance(mouse_x,mouse_y,x,y) <= 4) && pressed_LMB
{
	with instance_nearest(mouse_x,mouse_y,oSlider)
	{ slider_active = true; }
}

if released_LMB
{
	slider_active = false;		
}

if slider_active = true
{
	//show_debug_message("catch2");
	x = mouse_x;
	x = clamp(x,slider_zero,slider_max);
	posX = x;
}	

slider_current = (posX-xstart)/(slider_max-xstart)*100
round_current = round(slider_current); //current % of sliderbar

