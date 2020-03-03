/// @description  Path Reset Alarm
//if (!los) {
//if (!seen) {
    var mx = (tx div 32) * 32 + 16;
    var my = (ty div 32) * 32 + 16;
    
    if (mp_grid_path(global.grid, path, x, y, mx, my, true)) {
        path_set_kind(path, 1);
        path_set_precision(path, 4);
        path_set_closed(path, false);
        set = 1;
        ind = 0;
    }
//}

alarm[1] = tick;

