/// @description scr_ProjectileCreate(projectile_offsetX,projectile_offsetY,targetX,targetY,depth,angle,sprite,speed);
/// @function scr_ProjectileCreate

/// @param projectile_offsetX
/// @param projectile_offsetY
/// @param targetX
/// @param targetY
/// @param depth
/// @param angle
/// @param projectile_sprite
/// @param projectile_speed
/// @param projectile_object

function scr_ProjectileCreate()
{
var _projectile_offsetX = argument0;
var _projectile_offsetY = argument1;
var _targetX = argument2;
var _targetY = argument3;
var _depth = argument4;
var _angle = argument5;
var _projectile_sprite = argument6;
var _projectile_speed = argument7;
var _projectile_object = argument8;

with instance_create_depth(_projectile_offsetX,_projectile_offsetY,depth,_projectile_object) 
{
	{
		angle = _angle;
		projectile_sprite = _projectile_sprite;
		projectile_speed = _projectile_speed;
		targetX = _targetX;
		targetY = _targetY;
	}
}
}