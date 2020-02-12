/// player_state_climbing()
var LADDER_SPEED = 3;

// Climb up and down ladder
if (key_jump) {
    if (!place_meeting(x, y-LADDER_SPEED, collision_object)) {
        y -= LADDER_SPEED;
        //vsp[0] = -LADDER_SPEED;
    }
}
if (key_down) {
    if (!place_meeting(x, y+LADDER_SPEED, collision_object)) {
        y += LADDER_SPEED;
        //vsp[0] = LADDER_SPEED;
    }
}

// Shift left and right on ladder
if (key_left) {
    if (!place_meeting(x-LADDER_SPEED, y, collision_object)) {
        x -= LADDER_SPEED;
        hsp[0] = -LADDER_SPEED;
    }
}
if (key_right) {
    if (!place_meeting(x+LADDER_SPEED, y, collision_object)) {
        x += LADDER_SPEED;
        hsp[0] = LADDER_SPEED;
    }
}

// Get off ladder
if (!place_meeting(x, y, ob_ladder)/* || key_right || key_left*/) {
    state = player_state_move;
    grav = g[2];
}
