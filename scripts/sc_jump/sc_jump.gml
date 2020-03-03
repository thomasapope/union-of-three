/// @description sc_jump(jump_height, jump_weight, h_speed, h_boost, axis, target)
/// @param jump_height
/// @param  jump_weight
/// @param  h_speed
/// @param  h_boost
/// @param  axis
/// @param  target

var jump_height = argument[0]; // -_-
var jump_weight = argument[1]; // the pull of gravity
var h_speed = argument[2]; // Objects max speed
var h_boost = argument[3]; // Horizontal speed boost
var axis = argument[4];
var target = argument[5]; // The object that is jumping

target.grav = jump_weight; // Adjust targets gravity

target.vsp[0] = -jump_height; // Jump
target.hsp[0] += sign(axis) * h_boost; // Apply horizontal boost
