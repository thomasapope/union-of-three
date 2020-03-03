/// @description enable_movement_air_jump(input, axis, airspd)
/// @param input
/// @param  axis
/// @param  airspd
/*
    Call this script in order to add platform in air jumping
    (air jumping) to a movement entity.
*/

var input = argument[0];
var axis = argument[1];
var airspd = argument[2];

var jump_height, grav;

// Calculate Air Jump Height
if (jump > 1) {
    jump = 1;
}
    

    
// Air jump
if (!ground && air_jumps > 0 && input && !place_meeting(x+(sign(axis) * airspd), y, collision_object)) {
    // Determine jump height and gravity
    switch (jump) {
        case 0: // First Air Jump
            jump_height = 8;
            grav = .58;
            acc = AIR_ACCELERATION;
            break;
        case 1: // Second Air Jump
            jump_height = 5;
            grav = .6;
            acc = AIR_ACCELERATION + .5;
            break;
        case 2: // Etc.
            jump_height = 5;
            grav = .45
            break;
        case 3:
            jump_height = 3.125;
            grav = .24;
            break;
    }
    
    // Jump
    sc_jump(jump_height, grav, airspd, JUMP_BOOST, axis, self);
    jy = y;
    
    // Move to next air jump
    jump++;
    air_jumps--;
}

// Air jump reset
if (ground) {
    air_jumps = MAX_JUMPS;
    jump = 0;
}
