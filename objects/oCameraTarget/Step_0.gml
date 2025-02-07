if instance_exists(target) && instance_exists(oPlayer) && instance_exists(oCamera)
{

//var mouse_distance = point_distance(oPlayer.x,oPlayer.y,mouse_x,mouse_y);

mouse_distance = point_distance(target.x,target.y, mouse_x,mouse_y); //Update Mouse Distance
mouse_distance = clamp(mouse_distance,0, mouse_distancemax);
var mouse_distanceX = lerp(target.x, mouse_x, 0.5) //Update Mouse Distances
var mouse_distanceY = lerp(target.y, mouse_y, 0.5) 
mouse_distanceX = clamp(mouse_distanceX,target.x-mouse_distance,target.x+mouse_distance); //Clamp the Distances
mouse_distanceY = clamp(mouse_distanceY,target.y-mouse_distance,target.y+mouse_distance);
x = mouse_distanceX; //Follows midpoint from character to mouse
y = mouse_distanceY;





/*Copy in case of failure
mouse_distance = point_distance(oPlayer.x,oPlayer.y, mouse_x,mouse_y); //Update Mouse Distance
mouse_distance = clamp(mouse_distance,0, mouse_distancemax);
var mouse_distanceX = lerp(oPlayer.x, mouse_x, 0.5) //Update Mouse Distances
var mouse_distanceY = lerp(oPlayer.y, mouse_y, 0.5) 
mouse_distanceX = clamp(mouse_distanceX,oPlayer.x-mouse_distance,oPlayer.x+mouse_distance); //Clamp the Distances
mouse_distanceY = clamp(mouse_distanceY,oPlayer.y-mouse_distance,oPlayer.y+mouse_distance);
x = mouse_distanceX; //Follows midpoint from character to mouse
y = mouse_distanceY;
*/


//get point distance instead of this garbage

/*
//sloppy but works - "quadrant camera"
if global.look_direction >= 0 && global.look_direction <= 90
{
x = oPlayer.x + mouse_distance / modifier;
y = oPlayer.y - mouse_distance / modifier;
}else
if global.look_direction > 90 && global.look_direction <= 180
{
x = oPlayer.x - mouse_distance / modifier;
y = oPlayer.y - mouse_distance / modifier;
}else
if global.look_direction > 180 && global.look_direction <= 270
{
x = oPlayer.x - mouse_distance / modifier;
y = oPlayer.y + mouse_distance / modifier;	
}else
if global.look_direction > 270 && global.look_direction <= 360
{
x = oPlayer.x + mouse_distance / modifier;
y = oPlayer.y + mouse_distance / modifier;
}*/


}