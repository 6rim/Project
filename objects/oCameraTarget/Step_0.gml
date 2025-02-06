if instance_exists(target)
{

mouse_distance = point_distance(oPlayer.x,oPlayer.y, mouse_x,mouse_y); //Update Mouse Distance

mouse_distance = clamp(mouse_distance,0,mouse_distancemax);


if instance_exists(oCamera)
{
	
	
	
	
	
}



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