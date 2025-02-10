///@description Debug Controller

//TODO:
//Change setting from menu instead of ESC toggle button


fullscreentoggle = false;
TOGGLEFULLSCREEN = "";

debug_toggle = true;
global.debug_control = true;
//if global.debug_control = true {alarm[0] = room_speed*1}

function enable_debug()
{ 
	if instance_exists(oPlayer) {oPlayer.debug=true;}
	if instance_exists(oCamera) {oCamera.debug=true;}
	if instance_exists(oEnemy) {oEnemy.debug=true;}
	if instance_exists(oWand) {oWand.debug=true;}	
	if instance_exists(oPathfinder) {oPathfinder.debug=false;}
}

function disable_debug()
{ 
	if instance_exists(oPlayer) {oPlayer.debug=false;}
	if instance_exists(oCamera) {oCamera.debug=false;}
	if instance_exists(oEnemy) {oEnemy.debug=false;}
	if instance_exists(oWand) {oWand.debug=false;}	
	if instance_exists(oPathfinder) {oPathfinder.debug=false;}	
}