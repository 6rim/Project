scr_PlayerInput();

if pressed_LMB && ((mouse_x > x && mouse_x < colX2) && (mouse_y > y && mouse_y < colY2))
{
	//Perform Button Actions
	show_debug_message(debugcount);
	debugcount++;
}