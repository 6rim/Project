//Call Player Input
scr_PlayerInput();

#region	Debug toggle
if pressed_BACKSPACE
{
switch (noclip) {
case true: noclip = false;
break; //Toggle noclip
case false: noclip = true;
}
}else
if pressing_SHIFT && pressed_BACKSPACE { game_restart(); }//temporarily here for debugging

if pressing_SHIFT && pressed_TAB
{
switch (debug) {
case true: debug = false;
break; //Toggle debug
case false: debug = true;
}
}


#endregion

if current_hp <= 0// && player_died = false //Player death + end game
{
	show_message(end_message[irandom(2)]);
	playerstate = states.death;
	player_died = true;
	game_end();
}

if current_experience >= max_experience
{
	current_experience = 0; //reset xp bar
	current_level ++; //level up
	max_experience += ceil(max_experience*0.25);
	current_hp = max_hp
	max_hp += ceil(max_hp*0.25);
}

if pressed_LMB
{
//	scr_AnimationPlay(oAnimation,mouse_x,mouse_y,spr_CrateDeath,0.5,true,false,0);
}


//Depth
depth_get();

//GLOBAL LOOK DIRECTION
global.look_direction = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);

camera_distance_offsetX = x + lengthdir_x(camera_distance,global.look_direction);
camera_distance_offsetY = y + lengthdir_y(camera_distance,global.look_direction);

//CAMERA
camera_distance = point_distance(0,0,camera_tipX,camera_tipY)

camera_tipX = point_distance(x,y,mouse_x,mouse_y);
camera_tipY = point_distance(x,y,mouse_x,mouse_y);









#region Movement and Collisions

var xkey = pressing_D - pressing_A;
var ykey = pressing_S - pressing_W;
move_direction = point_direction(0,0,xkey,ykey);

var spd = 0;
var runspd = 0;
var inputlevel = point_distance(0,0,xkey,ykey);
inputlevel = clamp(inputlevel,0,1);

spd = move_speed * inputlevel;
runspd = run_speed * inputlevel;

//DYNAMIC MOVESPEED
if !pressing_SHIFT { spdX = lengthdir_x( spd, move_direction); spdY = lengthdir_y( spd, move_direction); } 
else 
if pressing_SHIFT { spdX = lengthdir_x( runspd, move_direction); spdY = lengthdir_y( runspd, move_direction); }


//COLLISIONS
if place_meeting(x+spdX,y,oWall) { spdX = 0; }
if place_meeting(x,y+spdY,oWall) { spdY = 0; }
if place_meeting(x+spdX,y,oWallHalf) { spdX = 0; }
if place_meeting(x,y+spdY,oWallHalf) { spdY = 0; }


//STATES

if (playerstate = states.free && movementenabled = true)
{
	if pressing_SHIFT { playerstate = states.run; } //Change to "Run"
	x += spdX;
	y += spdY;
}else
if (playerstate = states.run && movementenabled = true)
{	
	if !pressing_SHIFT { playerstate = states.free; } //Change to "Free"
	x += spdX;
	y += spdY;
} else
if playerstate == states.stunned
{
	//movementenabled = false; //Disable movement from player temporarily
}
#endregion

#region Sprite Controls
if notwalking && (spdX = 0 && spdY = 0)
{
	image_index = 4;
	image_speed = 0; //Stop animation
	sprite_current = global.look_direction/90;
}

if !notwalking // && (spdX > 0 || spdY > 0)
{
	image_speed = 0.4; //Play animation
	sprite_current = global.look_direction/90;
}
sprite_index = sprite[sprite_current];
#endregion