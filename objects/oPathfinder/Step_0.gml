 scr_PlayerInput()
 
 if pressed_DOWN
 {
	mp_grid_clear_all(grid);
	mp_grid_add_instances(grid,oWall,0);
	show_debug_message("grid refreshed: "+string(grid));
 }