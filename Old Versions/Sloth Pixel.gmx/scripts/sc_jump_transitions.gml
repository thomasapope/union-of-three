///sc_jump_transitions(h1, w1, t1, h2, w2, t2, target)

/*  
    Automatically transitions through jumps.
    Enter the height, width, and trigger value
        for two the latter two  periods of
        the jump, along with the target object
        any changes will apply to.
*/

// First transition
var h1 = argument[0];
var w1 = argument[1];
var t1 = argument[2];
// Second transition
var h2 = argument[3];
var w2 = argument[4];
var t2 = argument[5];

var target = argument[6];

if (target.ground == false) {
    // Transition 1
    if (target.y <= target.jy - t1) { sc_set_jump(h1, w1, target); }
    // Transition 2
    if (target.y <= target.jy - t2) { sc_set_jump(h2, w2, target); }
}
