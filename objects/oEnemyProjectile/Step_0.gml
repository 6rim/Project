distance_traveled = point_distance(xstart,ystart,x,y);
if (distance_traveled > max_distance) { instance_destroy(); }

if (distance_traveled >= fade_distance) { current_state = projectile_state.death; }


//if distance_traveled = (point_distance(xstart,ystart,targetX,targetY)-1) { instance_destroy(); }

#region Sprite Control - Animate the sprite frames / control alpha
projectile_sprite_duration = sprite_get_number(projectile_sprite); //Update Duration of the sprite

if projectile_current_frame < projectile_sprite_duration
{
	projectile_current_frame += projectile_frame_speed;	//Add to frame
} else
if projectile_current_frame >= projectile_sprite_duration
{
	projectile_current_frame = 0;	//Loop back to start
}

if current_state = projectile_state.flight
{
	if projectile_alpha < 1	{ projectile_alpha += projectile_fadein; } //Alpha Fade In
} else
if current_state = projectile_state.death
{	
	projectile_alpha -= projectile_fadeout; //Alpha Fade Out
}


image_angle = angle;
sprite_index = projectile_sprite;
image_index = projectile_current_frame;
image_alpha = projectile_alpha;
#endregion


//Move Projectile
x += lengthdir_x(projectile_speed,angle);
y += lengthdir_y(projectile_speed,angle);
targetX = lerp(x, targetX, projectile_speed);
targetY = lerp(y, targetY, projectile_speed);


//Collision
//if place_meeting(x+projectile_speed,y,oWall) { projectile_speed = 0; }
//if place_meeting(x,y+projectile_speed,oWall) { projectile_speed = 0; }
//if place_meeting(x+projectile_speed,y,oWallHalf) { projectile_speed = 0; }
//if place_meeting(x,y+projectile_speed,oWallHalf) { projectile_speed = 0; }


//scr_JumpInDirection(max_distance, global.look_direction);
//move_towards_point(targetX,targetY,projectile_speed);