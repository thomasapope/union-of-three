/// @description Create the grid
var cell_width = 32;
var cell_height = 32;

var hcells = room_width div cell_width; // number of cells horizontally
var vcells = room_height div cell_height; // number of cells vertically

global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

// Add the walls to grid
mp_grid_add_instances(global.grid, PAR_SOLID, false);


