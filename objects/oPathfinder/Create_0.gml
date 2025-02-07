depth = -3000;

//Initialize the grid

var grid_originX = -8;
var grid_originY = -8;
var grid_scaleX = 8;
var grid_scaleY = 8;
var grid_width = room_width + grid_scaleX;
var grid_height = room_height + grid_scaleY;

grid = mp_grid_create(grid_originX,grid_originY,grid_width,grid_height,grid_scaleX,grid_scaleY);
mp_grid_add_instances(grid,oWall,0);

alarm[0] = 1;