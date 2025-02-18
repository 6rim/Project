/// @function scr_SaveLocation()
/// @description Overwrites current saved location. Must intialize variables in each object that will retain info.

/// @param savedX
/// @param savedY
/// @param savedRoom

function scr_SaveLocation() {
	
	savedX = x; 
	savedY = y; 
	savedRoom = room;
	
}
