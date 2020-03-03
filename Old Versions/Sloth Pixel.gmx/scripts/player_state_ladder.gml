/// player_state_ladder()
var LADDER_SPEED = 3; // How fast the player can climb the ladder

// Climb up and down ladder
if (key_jump) { // climb up
    if (!place_meeting(x, y-LADDER_SPEED, collision_object)) {
        if (place_meeting(x+hsp_dir, y+6-LADDER_SPEED, ob_sideladder)) {
            y -= LADDER_SPEED;
        // if at the top of the ladder, get off
        } else if (!place_meeting(x+(8*hsp_dir), y, collision_object)) {
            x += 8 * hsp_dir;
            state = player_state_move;
        } 
    }
}
if (key_down) { // climb down
    if (!place_meeting(x, y+LADDER_SPEED, collision_object)) {
        y += LADDER_SPEED;
    } else {
        state = player_state_move;
    }
}

// Pull away from ladder
if (xaxis != 0 && !place_meeting(x+sign(xaxis), y, ob_sideladder)) {
     // give a little boost off ladder
    if (sign(xaxis) == -hsp_dir) {
        hsp[0] = LADDER_SPEED * sign(xaxis);
    } /*else {
        //hsp[0] = LADDER_SPEED * sign(xaxis) - sign(xaxis) - sign(xaxis); // less boost for walking
        hsp[0] = sign(xaxis); // less boost for walking
    }*/

    grav = g[2];
    state = player_state_move;
}

// Ladder Walljump  //  player must be moving toward the ladder
if (sign(xaxis) == hsp_dir && key_jump && empowered && place_meeting(x+sign(xaxis), y, ob_sideladder)) {
    if (key_jump && empowered) {
        sc_wall_jump(LADDER_SPEED, xaxis);
    }
    
    state = player_state_move;
}

