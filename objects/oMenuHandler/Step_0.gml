//Call Input
scr_PlayerInput();

if pressed_SEVEN
{
	if instance_exists(oPlayer) { 
	with oPlayer { scr_SaveLocation(); } 
	if instance_exists(oCamera) { instance_destroy(oCamera); } //refresh camera 
	scr_MoveToRoom(oPlayer,80,264,roomNext);
	roomNext = oPlayer.savedRoom;
	}	
}

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

#region	Debug Handling
if instance_exists(oPlayer)
{

if (pressed_NINE)
	{
	oPlayer.x = mouse_x;
	oPlayer.y = mouse_y;
	}

if (TOGGLENOCLIP)
{
	switch (oPlayer.noclip) {
	case true: oPlayer.noclip = false; 
	break; //Toggle noclip
	case false: oPlayer.noclip = true;
	}
}

if (TOGGLEDEBUG)
{
	switch (debug_toggle) {
	case false: debug_toggle = true; enable_debug();
	break; //Toggle debug
	case true: debug_toggle = false; disable_debug();
	}
}
	
if GAMERESTART { game_restart();}
}
#endregion
