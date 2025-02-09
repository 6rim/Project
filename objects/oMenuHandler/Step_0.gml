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

#region	Debug Handling
if instance_exists(oPlayer)
{

if (TOGGLENOCLIP)
	{
	switch (oPlayer.noclip) {
	case true: oPlayer.noclip = false;
	break; //Toggle noclip
	case false: oPlayer.noclip = true;
							}
	}

if TOGGLEDEBUG
	{
	switch (debug_toggle) {
	case false: debug_toggle = true; enable_debug();
	break; //Toggle debug
	case true: debug_toggle = false; disable_debug();			  }
	}
	
if GAMERESTART { game_restart();}
}
#endregion
