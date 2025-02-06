scr_PlayerInput();


//Set camera follow coordinates
if (follow != noone)
{
	camerato_x = (follow.x);
	camerato_y = (follow.y) - cameraY_offset;
}


//RMB Enable Target Mode
if follow = follow_default && instance_exists(oCameraTarget) && pressing_RMB
{ follow = oCameraTarget } else if !pressing_RMB { follow = follow_default }

//Make Camera object follow (visible to player, doesn't depict actual camera)
x += ((camerato_x - x)/25);
y += ((camerato_y - y)/25);


//Cursor Control
if (instance_exists(oCursor) && camerahighlighted == true)
{
	oCursor.cursorstate = highlight;
	if camerahighlighted == false
	{
	oCursor.cursorstate = free;	
	}
}

cameraX = camera_get_view_x(global.Camera);
cameraY = camera_get_view_y(global.Camera);


targetX = (follow.x) + sprite_get_width(spr_PlayerIdleDefault)/2 - camerawidth / 2;
targetY = (follow.y) + sprite_get_height(spr_PlayerIdleDefault)/2- cameraheight / 2;

//Clamp
targetX = clamp(targetX, 0, room_width - camerawidth);
targetY = clamp(targetY, 0, room_height - cameraheight);

//Smooth Move - Change Speed
if point_distance(cameraX,cameraY,targetX,targetY) < 10 { cameraspeed = camera_highspeed }
else if point_distance(cameraX,cameraY,targetX,targetY) >= 10 { cameraspeed = camera_lowspeed;}

cameraX = lerp(cameraX, targetX, cameraspeed);
cameraY = lerp(cameraY, targetY, cameraspeed);

camera_centerX = cameraX+camerawidth/2;
camera_centerY = cameraY+cameraheight/2;

//Apply Changes
camera_set_view_pos(global.Camera,cameraX,cameraY);