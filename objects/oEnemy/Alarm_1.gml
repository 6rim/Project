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

sight = collision_line(x,y,target.x,target.y,oWall,false,false)//update sight
mp_grid_path(oPathfinder.grid,path,x,y,targetX,targetY,choose(0,1)); //make path to player

//Movement Enable / Disable
if instance_exists(oStartGame)
{ if oStartGame.showtext = false { movement_enabled = true; } }//Initialize enemy movement

if instance_exists(oMenu)
{ movement_enabled = false;	}

//Idle State
if current_state = enemy_state.idle {
if guard_default = true { current_state = enemy_state.guard }
if movement_enabled = true && ( path_distance < path_viewdistance ) && ( path_distance >= path_stopdistance )
{ current_state = enemy_state.moving; }
}
//Move State
else if current_state = enemy_state.moving 
{
targetX = target.x; //set target coords
targetY = target.y-1;
movement_speed = movement_speed_max; //set ms on tracking
if ( path_distance >= path_viewdistance ) { current_state = enemy_state.idle; } //disengage if not in range
if movement_enabled = true { path_start(path, movement_speed, path_action_stop, true); } //move towards target
}
//Guard State 
else if current_state = enemy_state.guard 
{
if ( path_distance < path_viewdistance ) && ( path_distance >= path_stopdistance )
{ current_state = enemy_state.moving; }
if (path_distance >= path_viewdistance) {targetX = guardX; targetY = guardY;}
movement_speed = movement_speed_max; //Set MS
if movement_enabled = true { path_start(path, movement_speed, path_action_stop, true); }
}
//Attack State
else if current_state = enemy_state.attack
{
if sight { if movement_enabled = true { movement_speed = movement_speed_max; path_start(path, movement_speed, path_action_stop, true); } }//move towards target if view is obstructed	
}

alarm_set(1,random_range(30,60)); //Update on "random" ticks