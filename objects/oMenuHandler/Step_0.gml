//Call Input
scr_PlayerInput();

//Toggle Fullscreen
if TOGGLEFULLSCREEN && fullscreentoggle = false
{
	fullscreentoggle = true;
} else
if TOGGLEFULLSCREEN && fullscreentoggle = true
{
	fullscreentoggle = false;
}


//Menu Creation

if (pressed_TAB && !(instance_exists(oMenu)))
{
	scr_MenuCreate(mouse_x,mouse_y,"String",3);
}