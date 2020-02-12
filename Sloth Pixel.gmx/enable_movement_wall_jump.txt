///enable_movement_wall_hang(distance, jump_hold_input, jump_input, right_input, left_input)
/*
    Call this script in order to enable platform wall
    jumping on a movement entity.
*/

var distance = argument[0] + 2; // Distance to check from wall and horizontal jump speed
var jump_hold_input = argument[1]; // Jump input
var jump_input = argument[2];
var axis = argument[3]
var jump_boost = distance + 3;
var slide = 3; // how fast player slides down the wall
var dir;

// Wall jump
if (!ground) {
    if (place_meeting(x+(sign(axis) * distance), y, collision_object) && !place_meeting(x+(axis * distance), y, PAR_SMOOTH)) {
        dir = sign(axis);
        vsp[0] = approach(vsp[0], slide, .5);
        if (jump_input) {
            sc_wall_jump(distance-2,  axis);
        }
    }
}
