scr_PlayerInput();

if place_meeting(mouse_x,mouse_y,oSliderChild) && pressed_LMB
{
	with instance_nearest(mouse_x,mouse_y,oSliderChild)
	{ slider_active = true; }
}

if released_LMB
{
	slider_active = false;		
}