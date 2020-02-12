/// sc_npc_chase_state()
//check_for_pc();
get_target(target, view_wview/2);

//if (seen) {
    // Wander alarm
    //alarm[2] = room_speed * 10;
    //search = 0;
    
    // Direction Checking and PathFinding
    var up, down;
    var yaxis = 0;
    
    //if (alarm[0] <= 0) {
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
        
        // Attack target
        if place_meeting(x, y, target) {
            var i = instance_create(other.x, other.y, PAR_DAMAGE);
                i.damage = attack;
                i.creator = id;
                
            //alarm[0] = 25;
            hsp[0] = sign(x-target.x) * 6;
            vsp[0] = sign(y-target.y) * 6;
        }
/*} else if (alarm[2] <= 0) {
    state = state_pathonly_wander;
    ty = random(room_height);
    tx = random(room_width);
    search = 1;
}
