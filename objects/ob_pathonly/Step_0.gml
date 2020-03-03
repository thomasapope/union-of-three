// Death Check
if (hp <= 0) {
    path_delete(path);
    instance_destroy();
}

script_execute(state);

// Get Target
//if instance_exists(target)
    //get_target(target, view_wview);

/*// Direction Checking and PathFinding
var up, down;
var yaxis = 0;

//if (alarm[0] <= 0) {
    if (los) {
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
        //get_npc_axis(xaxis, tx, ty);
    } else {
        //maxspd = idle_speed;
        if (set == 1) {
            dist = path_get_length(path);    
            xaxis = sign(path_get_x(path, ind+maxspd/dist) - x);
            yaxis = sign(path_get_y(path, ind+maxspd/dist) - y);
            ind += maxspd / dist;
        }
    }
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
//}/**/


/* */
/*  */
