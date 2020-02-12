///position_meeting_exception(x, y, obj, exception)
/*
    Works just like position_meeting but you can pass an exception
    instance that won't be included in the check.
*/

var xx = argument0; // x position to check
var yy = argument1; // y position to check
var obj = argument2; // Object to check for
var exception = argument3; // Exception instance to leave out

var instance = position_meeting(xx, yy, obj); // Call position_meeting

// Return true unless the exception instance matches the instance at that location
return (instance != exception && instance);
