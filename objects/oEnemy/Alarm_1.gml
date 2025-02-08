///@description Update Enemy Pathing + state machine


//not optimal placement
//mp_grid_clear_all(oPathfinder.grid);
//mp_grid_add_instances(oPathfinder.grid,oWall,0);
//mp_grid_add_instances(oPathfinder.grid,oEnemy,0);


path_delete(path);
path = path_add();

if guard_default != true
{
targetX = target.x;
targetY = target.y-1; //-1 because player origin is at bottom middle (?)
}


wall_in_LOS = collision_line(x,y,target.x,target.y,oWall,false,false)//update sight (LOS)
self_in_LOS = !collision_line(x,y,target.x,target.y,follower,false,false) && collision_line(x,y,target.x,target.y,oEnemyFollower,false,false)//testing to reduce clumping of enemies



player_in_range  = ( path_distance < path_viewdistance ); //player in range of targeting distance
target_not_met = ( path_distance >= path_stopdistance ); //enemy has not reached target

mp_grid_path(oPathfinder.grid,path,x,y,targetX,targetY,choose(0,1)); //make path to player

//Movement Enable / Disable
if instance_exists(oStartGame)
{ if oStartGame.showtext = false { movement_enabled = true; } }//Initialize enemy movement
if instance_exists(oMenu)
{ movement_enabled = false;	}


//Idle State - sitting motionless
if current_state = enemy_state.idle {
if guard_default = true { current_state = enemy_state.guard } //set to guard if it is true
//move if player is in view
if (movement_enabled = true && player_in_range && target_not_met)
{ current_state = enemy_state.moving; }
}
//Move State - Pathing towards target
else if current_state = enemy_state.moving 
{
targetX = target.x; //set target coords
targetY = target.y-1;
movement_speed = movement_speed_max; //set ms on tracking
if !player_in_range { current_state = enemy_state.idle; } //disengage if not in range
if movement_enabled = true { path_start(path, movement_speed, path_action_stop, true); } //move towards target
}
//Guard State - Goes to set position
else if current_state = enemy_state.guard 
{
if ( path_distance < path_viewdistance ) && ( path_distance >= path_stopdistance )
{ current_state = enemy_state.moving; }
if (path_distance >= path_viewdistance) {targetX = guardX; targetY = guardY;} //set target back to guard position
movement_speed = movement_speed_max; //Set MS
if movement_enabled = true { path_start(path, movement_speed, path_action_stop, true); } //go to guard position
}
//Attack State - Fires projectile in LOS to target
else if current_state = enemy_state.attack
{


#region Attack
if current_state = enemy_state.attack && attack_counter >= 1
{ attack_counter = 0; alarm[2] = attack_cooldown; } //Start timer and attack

#endregion

if player_in_range && target_not_met { current_state = enemy_state.moving; } // keep moving after attack
if !self_in_LOS { if movement_enabled = true { 
show_debug_message("enemy in LOS"); }
movement_speed = movement_speed_max; 
path_start(path, movement_speed, path_action_stop, true); } //move towards target if view is obstructed	
}//end attack state


alarm_set(1,random_range(30,60)); //Update on "random" ticks