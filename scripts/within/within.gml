/// @description within(value1, value2, within)
/// @param value1
/// @param  value2
/// @param  within
/*
 * Returns true if the given variable is close enough
 * to the given value (within a certain number)
 */
var a = argument[0]; // Variable to check
var b = argument[1]; // value to compare variable to
var c = argument[2]; // Radius around value to check

var check = a > b - c && a < b + c;

return check;
