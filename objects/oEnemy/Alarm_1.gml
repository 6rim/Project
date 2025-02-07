///@description Update Enemy Pathing


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


mp_grid_path(oPathfinder.grid,path,x,y,targetX,targetY,choose(0,1)); //make path to player


if instance_exists(oStartGame)
{
	if oStartGame.showtext = false
	{	
		movement_enabled = true; //Enable movement
	}
}

//ugly mess teehee will fix later
if current_state = enemy_state.idle { //Idle state
	if guard_default = true { current_state = enemy_state.guard }
	if movement_enabled = true && ( path_distance < path_viewdistance ) && ( path_distance >= path_stopdistance )
	{ current_state = enemy_state.moving; }
} else if current_state = enemy_state.moving {
	targetX = target.x;
targetY = target.y-1;
	movement_speed = movement_speed_max; //Set MS
	path_start(path, movement_speed, path_action_stop, true); //Move towards player
	if ( path_distance >= path_viewdistance ) { current_state = enemy_state.idle; } //Disengage
} else if current_state = enemy_state.guard { //Guard state
	if movement_enabled = true && ( path_distance < path_viewdistance ) && ( path_distance >= path_stopdistance )
	{ current_state = enemy_state.moving; }
	if path_distance >= path_viewdistance {targetX = guardX; targetY = guardY;}
	movement_speed = movement_speed_max; //Set MS
	path_start(path, movement_speed, path_action_stop, true);
}

alarm_set(1,random_range(30,60)); //Update on "random" ticks