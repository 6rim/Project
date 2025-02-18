///@description Update Enemy Pathing + state machine


//not optimal placement
//mp_grid_clear_all(oPathfinder.grid);
//mp_grid_add_instances(oPathfinder.grid,oWall,0);
//mp_grid_add_instances(oPathfinder.grid,oEnemy,0);


path_delete(path);
path = path_add();
path_set_kind(path,1); //smooth path

if guard_default != true
{
targetX = target.x;
targetY = target.y-1; //-1 because player origin is at bottom middle (?)
}


wall_in_LOS = collision_line(x,y,target.x,target.y,oWall,false,false)//update sight (LOS)
self_in_LOS = !collision_line(x,y,target.x,target.y,follower,false,false) && collision_line(x,y,target.x,target.y,oEnemyFollower,false,false)//testing to reduce clumping of enemies



player_in_range  = ( path_distance < path_viewdistance ); //player in range of targeting distance
target_not_met = ( path_distance > path_stopdistance ); //enemy has not reached target
at_stop_distance = ( path_distance <= path_stopdistance ); //enemy at stop dist

mp_grid_path(oPathfinder.grid,path,x,y,targetX,targetY,choose(0,1)); //make path to player

//Movement Enable / Disable
if instance_exists(oStartGame)
{ if oStartGame.showtext = false { movement_enabled = true; } }//Initialize enemy movement
if instance_exists(oMenu)
{ movement_enabled = false;	}


//Idle State - sitting motionless
if current_state = enemy_state.idle {
path_end();
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
if player_in_range && (at_stop_distance) && (!wall_in_LOS && !self_in_LOS) { path_end(); current_state = enemy_state.attack; }
}

//Guard State - Goes to set position
else if current_state = enemy_state.guard 
{
if player_in_range && target_not_met { current_state = enemy_state.moving; }
if at_stop_distance { current_state = enemy_state.attack; }
if !player_in_range {targetX = guardX; targetY = guardY;} //set target back to guard position
movement_speed = movement_speed_max; //Set MS
if movement_enabled = true { path_start(path, movement_speed, path_action_stop, true); } //go to guard position
}

//Attack State - Fires projectile in LOS to target
else if movement_enabled = true && current_state = enemy_state.attack
{
path_end();//stop moving before attacking
#region Attack 


//do this on encounter
if instance_exists(oPlayer) { oPlayer.begin_battle = true; }


/* Topdown
if attack_counter >= 1
{ attack_counter = 0; alarm[2] = attack_cooldown; } //start alarm and attack
*/

#endregion

if player_in_range && target_not_met { current_state = enemy_state.moving; } //move to find target if obstructed
//path_start(path, movement_speed, path_action_stop, true); } //move towards target if view is obstructed	
}


alarm_set(1,random_range(30,60)); //Update on "random" ticks