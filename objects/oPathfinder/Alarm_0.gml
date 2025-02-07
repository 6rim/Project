///@description Refresh the grid
mp_grid_clear_all(grid);
mp_grid_add_instances(grid,oWall,0);
//mp_grid_add_instances(grid,oEnemy,0);

//show_debug_message("pathfinding refreshed"+string(delta_time));
alarm[0] = 30; //time to refresh pathfinding 