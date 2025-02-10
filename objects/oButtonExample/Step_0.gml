scr_PlayerInput();

mouse_in_range = ((mouse_x > x && mouse_x < colX2) && (mouse_y > y && mouse_y < colY2));

if pressed_LMB && mouse_in_range
{
	//Perform Button Actions
	show_debug_message(debugcount);
	debugcount++;
	
	if instance_exists(oPlayer)
	{
		if global.gravity_toggle = true { global.gravity_toggle = false;}
		else
		if global.gravity_toggle = false { global.gravity_toggle = true;}
	}
	
}

