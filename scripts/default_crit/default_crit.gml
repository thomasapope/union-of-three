/// @description  default_crit(px, py, target, debug?)
/// @param px
/// @param  py
/// @param  target
/// @param  debug?
/**
 *  The default crit location check
 *
 *  Checks within a circle around the objects' x and y coordinates
**/


var px = argument[0]; // x coord of collision check
var py = argument[1]; // y coord of collision check
var target = argument[2]; // Which object this collision is being checked for
var debug = argument[3];

if (!debug) {
    // Check for collision
    return point_in_circle(px, py, target.x, target.y, target.sprite_width / 2);
} else {
    if (global.debug) {
        // Draw collision box
        draw_set_color(c_orange);
        draw_circle(target.x, target.y, target.sprite_width / 2, false);
    }
}
