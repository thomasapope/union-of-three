/// @description enable_movement_rise(acceleration, max_speed, max_speed_air, up_input, down_input)
/// @param acceleration
/// @param  max_speed
/// @param  max_speed_air
/// @param  up_input
/// @param  down_input
/*
    Call this script in order to enable vertical
    rising for a movement entity.
*/

var acc = argument[0]; // Acceleration value
var maxspdground = argument[1]; // Maximum rise speed
var maxspdair = argument[2];
var up_input = argument[3]; // up movement input
var down_input = argument[4]; // down movement input
var vacc = (up_input - down_input)*acc;
var maxspd = maxspdair;

/*if ground {
    maxspd = maxspdground;
} else {
    maxspd = maxspdair;
}*/
maxspd *= sign(vacc);

vertical_move_input = vacc != 0;

add_movement_horizontal_vertical_maxspeed(0, vacc, 0, maxspd);
