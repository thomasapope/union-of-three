/// player_state_ledge_grab()
/**
 *  Ledge grab state
 *
 *  Player can drop off ledge, climb up, or wall jump (if empowered)
**/

if (key_jump_press) {
    if (position_meeting(x+(GRAB_DISTANCE*xaxis), y, collision_object) && empowered) { // Wall jump off ledge
        sc_wall_jump(AIR_SPEED, xaxis);
    } else { // climb over ledge
        sc_jump(5, .39, AIR_SPEED, 0, xaxis, self);
        jy = y;
    }
    
    state = player_state_move;
}

if (key_down) { // drop down from ledge
    state = player_state_move;
}

if (xaxis != 0) {
    if (position_meeting(x+(GRAB_DISTANCE*-xaxis), y, collision_object)) { // pull away from ledge
        state = player_state_move;
    }
}

