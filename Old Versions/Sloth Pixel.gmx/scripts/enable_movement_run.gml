///enable_movement_run(acceleration, max_speed, max_speed_air, axis)
/*
    Call this script in order to enable horizontal
    running on a movement entity.
*/

var acc = argument[0]; // Acceleration value
var groundspd = argument[1]; // Maximum run speed
var airspd = argument[2];
var axis = argument[3]; // right input - left input
var hacc = axis * acc;
var maxspd = airspd;
if ground
    maxspd = groundspd;
    
maxspd *= sign(hacc);

horizontal_move_input = hacc != 0;

add_movement_horizontal_vertical_maxspeed(hacc, 0, maxspd, 0);
