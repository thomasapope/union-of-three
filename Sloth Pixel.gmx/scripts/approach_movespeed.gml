///approach_movespeed(current, target, amount, haxis)
/*
    This script approaches a movespeed but does not pass it.
    If current movespeed is faster than the target speed,
    this script will not slow it down.
*/

var current = argument[0]; // Current value
var target = argument[1]; // Target value
var amount = argument[2]; // Amount to approach each step
var axis = argument[3];
var val = current;

// approach the value but don't go over
if (current < target) {
    val = min(current+amount, target); // set val to min of amount plus current or target
    //if (sign(current) == sign(target))
        //val = current;
} else {
    val = max(current-amount, target); // set val to max of current minus amount or target
    //if (sign(current) == sign(target))
        //val = current;
}

// No maxspeed when in air
if (!ground) {
    if((current > target) && (sign(current) == sign(target)) && (axis == 1)) {
        val = current;
    }
    if((current < target) && (sign(current) == sign(target)) && (axis == -1)) {
        val = current;
    }
}

return val;
