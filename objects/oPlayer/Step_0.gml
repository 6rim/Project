//Call Player Input
scr_PlayerInput();
scr_BattleScript();
Macro();

if !instance_exists(oCamera) {instance_create_depth(x,y,depth,oCamera);} //recreate camera if it is destroyed


if begin_battle = true
{
	scr_SaveLocation();
	if instance_exists(oCamera) { instance_destroy(oCamera); } //refresh camera 
	scr_MoveToRoom(oPlayer,80,264,rBattleRoom);
	begin_battle = false; //reset
}





if current_hp <= 0// && player_died = false //Player death + end game
{
	show_message(end_message[choose(0,1,2)]);
	playerstate = states.death;
	player_died = true;
	//game_end();
}

//crappy level up system, needs updated to shops
if current_experience >= max_experience
{
	current_experience = 0; //reset xp bar
	current_level ++; //level up
	max_experience += ceil(max_experience*0.25);
	current_hp = max_hp
	max_hp += ceil(max_hp*0.25);
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

if global.gravity_toggle = false //TOPDOWN MOVEMENT SYSTEM
{
var xkey = pressing_D - pressing_A;
var ykey = pressing_S - pressing_W;
move_direction = point_direction(0,0,xkey,ykey);

var spd = 0;
var runspd = 0;
var inputlevel = point_distance(0,0,xkey,ykey);
inputlevel = clamp(inputlevel,0,1);
spd = move_speed * inputlevel;
runspd = run_speed * inputlevel;

//DYNAMIC MOVESPEED (topdown)
if !pressing_SHIFT { spdX = lengthdir_x( spd, move_direction); spdY = lengthdir_y( spd, move_direction); } 
else 
if pressing_SHIFT { spdX = lengthdir_x( runspd, move_direction); spdY = lengthdir_y( runspd, move_direction); }
} else


if global.gravity_toggle = true //PLATFORMER MOVEMENT SYSTEM
{
var xkey = pressing_D - pressing_A;
var jumpkey = pressed_SPACE;
//move_direction = point_direction(0,0,xkey,jumpkey);


var spd = 0;
var runspd = 0;
//var inputlevel = point_distance(0,0,xkey,jumpkey);
//inputlevel = clamp(inputlevel,0,1);

if movementenabled = true
{
spdX = move_speed * xkey;
runspd = run_speed * xkey;
spdY += gravity_amt;
}

if jumpkey && can_jump = true {spdY = -jump_amt; can_jump = false;}//make player jump
}


//COLLISIONS
if noclip = false {
if place_meeting(x+spdX,y,oWall) { spdX = 0; }
if place_meeting(x,y+spdY,oWall) { spdY = 0; }
if place_meeting(x+spdX,y,oBattleWall) { spdX = 0; }
if place_meeting(x,y+spdY,oBattleWall) { spdY = 0; can_jump = true;}
}


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




if instance_exists(oWand)
{
if global.wand_direction >= 25 && global.wand_direction <= 155
{
	//sprite_current = "up";	
}
}

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