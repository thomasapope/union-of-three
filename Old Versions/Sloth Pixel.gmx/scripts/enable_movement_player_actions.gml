///enable_movement_platform_actions(acceleration, ground_speed, air_speed, jump_input, jump_release_input, jump_hold_input, xaxis)
/*
    Call this script to enable basic platform physics on
    a movement entity. It will enable running, jumping, and
    wall jumping. If you want to mix and match the possible
    platform actions you can use the individual "enable_action"
    scripts separately in the step event of the movement entity.
    
    The reason you pass the inputs into this script is to
    decouple the actions from their inputs. You could even use
    this same script to enable platform actions on an AI.
    You would just pass in different inputs.
*/

var acceleration = argument[0]; // Run acceleration amount
var run_speed = argument[1]; // Maximum run speed
var air_speed = argument[2];
var jump_input = argument[3]; // The jump input
var jump_release_input = argument[4]; // The jump release input (This is used to allow controlled jump height)
var jump_press_input = argument[5];
var axis = argument[6]; // right_input - left_input

// Set Gravity - Preset: Default
if (ground) {
    sc_set_jump(96, 120, self); /** !!!NOT DEFAULT PRESET!!! **/
    acceleration = .6;
}

// Enable player actions
enable_movement_run(acceleration, run_speed, air_speed, axis);
enable_movement_jump(jump_press_input, jump_release_input, jump_input, axis);
enable_movement_air_jump(jump_press_input, axis);
enable_movement_wall_jump(air_speed, jump_input, jump_press_input, axis);
