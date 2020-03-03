/// @description  Path alarm
var mx = (tx div 32) * 32 + 16;
var my = (ty div 32) * 32 + 16;

if (mp_grid_path(global.grid, patha, x, y, mx, my, true)) {
    path_set_kind(patha, 1);
    path_set_closed(patha, false);
    set = 1;
    ind = 0;
    //path_start(path, 4, path_action_stop, false);
    num = path_get_number(patha);
}

alarm[1] = tick;

