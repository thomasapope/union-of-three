/// @description  Motion Path Timer

if (global.debug  = 1) {
    if (hsp[0] != 0 || vsp[0] != 0) {
        // Add a new point to the path
        path_add_point(motion, x, y-8, 100);
        
        // Remove the oldest point from the path
        if (path_get_number(motion) == MOTION_SEGMENTS ) 
            path_delete_point(motion, 0);
    } else {
        if (path_get_number(motion) > 0) 
            path_delete_point(motion, 0);
    }
}

// Reset this alarm
alarm[0] = MOTION_FREQUENCY;

