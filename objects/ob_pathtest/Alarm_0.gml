/// @description  Create the path and move to the mouse
var mx = (tx div 32) * 32 + 16;
var my = (ty div 32) * 32 + 16;

if (mp_grid_path(global.grid, pathi, x, y, mx, my, true)) {
    path_set_kind(pathi, 1);
    path_set_closed(pathi, false);
    set = 1;
    ind = 0;
}

alarm[0] = tick;

