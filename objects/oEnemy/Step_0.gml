depth_get();

path_distance = distance_to_object(target); //update
path_direction = point_direction(x,y,target.x,target.y);
path_viewX = point_distance(x,y,target.x,target.y);
path_viewY = point_distance(x,y,target.x,target.y);

current_state_name = state_name[current_state]; //update for displaying

//if ( path_distance < path_stopdistance ) { movement_speed = 0; current_state = enemy_state.idle; } //Disengage

//if ( path_distance < path_stopdistance ) { movement_speed = 0; current_state = enemy_state.attack; } //Change state to attack


push_radius = collision_circle(x,y,push,oEnemy,1,0); //for collision with self
if push_radius
{
	//not done
}


#region Death
if current_health <= 0
{
	current_state = enemy_state.death; //swap to death state
}
if current_state = enemy_state.death && instance_exists(oPlayer) && experience_dropped = false
{
	oPlayer.current_experience += experience_on_defeat; //Give player experience
	scr_AnimationPlay(oAnimation,x,y,death_animation,0.5,true,false,0); //Play death Animation
	experience_dropped = true;
	movement_enabled = false;
	alarm[0] = room_speed*0.1; //kill enemy
}
#endregion

