/// @description approach(current, target, amount)
/// @param current
/// @param  target
/// @param  amount
/*
    This script can be used to approach a value
    but not pass the value.
*/

var current = argument[0]; // Current value
var target = argument[1]; // Target value
var amount = argument[2]; // Amount to approach each step
var val = current;

// approach the value but don't go over
if (current < target) {
    val = min(current+amount, target); // set val to min of amount plus current or target
} else {
    val = max(current-amount, target); // set val to max of current minus amount or target
}
return val;
