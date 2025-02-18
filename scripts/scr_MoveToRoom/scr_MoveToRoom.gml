/// @function scr_MoveToRoom()
/// @description Moves object to room with set position.

/// @param target
/// @param targetX
/// @param targetY
/// @param destination

function scr_MoveToRoom(){

var target = argument0
var targetX = argument1; 
var targetY = argument2;
var destination = argument3; 
if room != destination { room_goto(destination); }
target.x = targetX;
target.y = targetY; 

}