/// enable_movement_ledge_grab()

// Ledge Grab
var was_free = !position_meeting(x+(GRAB_DISTANCE*hsp_dir), yprevious-GRAB_HEIGHT, collision_object);
var is_not_free = position_meeting(x+(GRAB_DISTANCE*hsp_dir), y-GRAB_HEIGHT, collision_object);
var can_grab = !position_meeting(x+(GRAB_DISTANCE*hsp_dir), y-GRAB_HEIGHT, PAR_SMOOTH) && !place_meeting(x, y, ob_sideladder);

if (was_free && is_not_free && can_grab && vsp[0]>0) {
    hsp[0] = 0;
    vsp[0] = 0;
    
    // Move against the ledge
    while (!place_meeting(x+hsp_dir, y, collision_object)) {
        x += hsp_dir;
    }
    
    // Make sure we are right height
    while (position_meeting(x+(GRAB_DISTANCE*hsp_dir), y-GRAB_HEIGHT-1, collision_object)) {
        y -= 1;
    }
    
    state = player_state_ledge_grab;
}
