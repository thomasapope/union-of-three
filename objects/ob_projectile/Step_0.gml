// Collision check
var xx = x + lengthdir_x(velocity, dir);
var yy = y + lengthdir_y(velocity, dir);

//if position_meeting(xx, yy, PAR_COLLISION) {
if (collision_line(x, y, xx, yy, PAR_COLLISION, 0, 0)) {
    instance_destroy();
}

