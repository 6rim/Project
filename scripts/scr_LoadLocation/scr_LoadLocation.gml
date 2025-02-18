/// @function scr_LoadLocation
/// @description Sends object back to saved location.

/// @param target
/// @param savedX
/// @param savedY
/// @param savedRoom

//using this function to recall after battle is over

function scr_LoadLocation() {
	
	var savedX_new = x;
	var savedY_new = y;
	var savedRoom_new = room;
	
	var target = argument0;
	target.x = argument1; 
	target.y = argument2; 
	if room != argument3 { room_goto(argument3); }
	
	//leaving these here for debug purposes
	savedX = savedX_new;
	savedY = savedY_new;
	savedRoom = savedRoom_new;
	
}
