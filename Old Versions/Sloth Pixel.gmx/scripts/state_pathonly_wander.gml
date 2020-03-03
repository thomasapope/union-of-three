/// sc_npc_wander_state()
//check_for_pc();
get_target(ob_player, view_wview/2);

    /*if (los) {
            //if (seen)
                //maxspd = chase_speed;
                
            // Move in the direction of the target
            if (tx > x) {
                xaxis = 1;
            }
            if (tx < x) {
                xaxis = -1;
            }
            if (ty > y+16) {
                yaxis = 1;
            }
            if (ty < y+16) {
                yaxis = -1;
            }
        } else {*/
            //maxspd = idle_speed;
            if (set == 1) {
                dist = path_get_length(path);    
                xaxis = sign(path_get_x(path, ind+maxspd/dist) - x);
                yaxis = sign(path_get_y(path, ind+maxspd/dist) - y);
                ind += maxspd / dist;
            } else {
                xaxis = 0;
                yaxis = 0;
            }
        //}
        if (yaxis == 1) {
            down = 0;
            up = 1;
        } else {
            down = 1;
            up = 0;
        }
        
        // Check if on ground
        ground = place_meeting(x, y+1, collision_object);
        
        // Enable horizontal and vertical movement
        enable_movement_run(acc, maxspd, maxspd, xaxis);
        enable_movement_rise(acc, maxspd, maxspd, up, down);
        
        // Move
        move_movement_entity();
        
        // Reset Search
        if (within(x, tx, 32) && within(y, ty, 32)) {
            ty = random(room_height);
            tx = random(room_width);
        }
        
        // Switch to Chase State
        if (seen) {
            state = state_npc_chase;
        }
