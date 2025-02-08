depth_get();

path_distance = distance_to_object(target); //update
path_direction = point_direction(x,y,target.x,target.y);
path_viewX = point_distance(x,y,target.x,target.y);
path_viewY = point_distance(x,y,target.x,target.y);

//if ( path_distance < path_stopdistance ) { movement_speed = 0; current_state = enemy_state.idle; } //Disengage

if ( path_distance < path_stopdistance ) { movement_speed = 0; current_state = enemy_state.attack; } //Change state to attack



#region Attack
if current_state = enemy_state.attack && attack_counter >= 1
{ attack_counter = 0; alarm[2] = attack_cooldown; } //Start timer and attack

#endregion


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

