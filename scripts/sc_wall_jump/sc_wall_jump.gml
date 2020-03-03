/// @description sc_wall_jump(distance, axis)
/// @param distance
/// @param  axis
var distance = argument[0];
var axis = sign(argument[1]);
var h_boost = distance + 3;

sc_jump(10, .52, distance, -h_boost, axis, self);
jy = y;
acc = .2;
alarm[1] = 12;
if (air_jumps < MAX_JUMPS -1) {
    air_jumps += 2;
    jump = 1;
}
