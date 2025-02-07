///@description Update Pathing

path_delete(path);
path = path_add();


targetX = target.x;
targetY = target.y;


mp_grid_path(oPathfinder.grid,path,x,y,targetX,targetY,1);

if instance_exists(oStartGame)
{
	if oStartGame.showtext = false
	{	
		movement_enabled = true;
	}
}

if movement_enabled = true
{
	path_start(path, movement_speed, path_action_stop, true)
}

alarm_set(1,30); //Update every 0.5s