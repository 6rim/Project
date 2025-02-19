///@description Debug Controller

roomNext = rBattleRoom;

depth = -400;

draw_primitive = false;
#region Primitive Vertices

x1 = -1 //initialize for drawing
y1 = -1	
x2 = -1
y2 = -1
x3 = -1
y3 = -1
x4 = -1
y4 = -1

vertex_offsetX = 0;
vertex_offsetY = 0;
vertex_multiplier = 5;
vertex_counter = 0; 


px1 = 0; //square 
py1 = 0;

px2 = 8;
py2 = 0;

px3 = 0;
py3 = 8;

px4 = 8;
py4 = 8;


/*
px1 = 4; 
py1 = 8;

px2 = 8;
py2 = 4;

px3 = 8;
py3 = 12;

px4 = 12;
py4 = 8;
*/

#endregion


fullscreentoggle = false;
TOGGLEFULLSCREEN = "";

debug_toggle = false;
global.debug_control = false;
//if global.debug_control = true {alarm[0] = room_speed*1}

function enable_debug()
{ 
	global.debug_control = true;
	if instance_exists(oPlayer) {oPlayer.debug=true;}
	if instance_exists(oCamera) {oCamera.debug=true;}
	if instance_exists(oEnemy) {oEnemy.debug=true;}
	if instance_exists(oWand) {oWand.debug=true;}	
	if instance_exists(oPathfinder) {oPathfinder.debug=true;}
	if instance_exists(oBattleHandler) {oBattleHandler.debug=true;}
}

function disable_debug()
{ 
	global.debug_control = false;
	if instance_exists(oPlayer) {oPlayer.debug=false;}
	if instance_exists(oCamera) {oCamera.debug=false;}
	if instance_exists(oEnemy) {oEnemy.debug=false;}
	if instance_exists(oWand) {oWand.debug=false;}	
	if instance_exists(oPathfinder) {oPathfinder.debug=false;}	
	if instance_exists(oBattleHandler) {oBattleHandler.debug=false;}
}

//Settings (also named in oSettingsMenu)
setting[0,0] = "Music Volume";
setting[1,0] = "Game Volume";
setting[2,0] = "2";
setting[3,0] = "3";
setting[4,0] = "4";

//This is where the settings are stored primarily
setting[0,1] = 75; //Music Volume
setting[1,1] = 100; //Game Volume
setting[2,1] = 0; //
setting[3,1] = 0; //
setting[4,1] = 0; //

music_volume = setting[0][1];
game_volume = setting[1][1];

function load_settings()
{
	if instance_exists(oSettingsMenu)
	{
		
	}
}