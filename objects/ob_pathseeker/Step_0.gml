// Death Check
if (hp <= 0) {
    path_delete(patha);
    instance_destroy();
}

// Get Target
if instance_exists(target)
    get_target(target, __view_get( e__VW.WView, 0 ));
//tx = target.x;
//ty = target.y;

// Pathfinding
var up = 0;
var down = 0;
var yaxis;

if (alarm[0] <= 0) {
    if (set == 1) {
        dist = path_get_length(patha);    
        xaxis = sign(path_get_x(patha, ind+maxspd/dist) - x);
        yaxis = sign(path_get_y(patha, ind+maxspd/dist) - y);
        ind += maxspd / dist;
        if (yaxis == 1) {
            down = 0;
            up = 1;
        } else {
            down = 1;
            up = 0;
        }
}

    // Check if on ground
    ground = place_meeting(x, y+1, collision_object);
    
    // Enable horizontal and vertical movement
    enable_movement_run(acc, maxspd, maxspd, xaxis);
    enable_movement_rise(acc, maxspd, maxspd, up, down);
    
    // Move
    move_movement_entity();
    
    /*// Attack target
    if place_meeting(x, y, target) {
        var i = instance_create(other.x, other.y, PAR_DAMAGE);
            i.damage = attack;
            i.creator = id;
        alarm[0] = 25;
    }*/
}

/* */
/*  */
