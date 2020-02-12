///enable_movement_jump(input, release_input, hold_input, axis, airspd, preset)
/*
    Call this script to enable platform jumping
    on a movement entity.
*/

var input = argument[0]; // The input for jumping
var release_input = argument[1]; // The input for jump height control (release)
var hold_input = argument[2];
var axis = argument[3];
var airspd = argument[4];
var set = argument[5];
var j_height = jump_height[set];

// Check for jump
if (ground || place_meeting(xprevious, yprevious+1, collision_object)) { // if ground or resently ground
    if (input) {
        // Jump
        // Set gravity - Preset: set
        sc_jump(jump_height[set], g[set], airspd, JUMP_BOOST, axis, self);
        jy = y;
        //h = height[set];
    }
} else { // if !ground
    // Early Jump Release
    if (release_input && vsp[0] <= -j_height/3) {
        // Set gravity - Preset: Default
        grav = g[0];
        
        // Cut off jump
        vsp[0] = -j_height/3;
    } 
    
    if (hold_input) {
        // Jump Transtions
        if (y <= jy - height[set]) { 
            // Set gravity - Preset: Jump Middle
            grav = g[set+1];
            acc = AIR_ACCELERATION;
        }
    }
    
    // Slow fall if player exits jump
    if (place_meeting(x, y-1, collision_object)) { // hitting the ceiling
        // Set gravity - Preset: Default
        grav = g[0];
    }
}
