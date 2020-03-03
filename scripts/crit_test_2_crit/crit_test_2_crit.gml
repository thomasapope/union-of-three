/// @description  crit_test_crit(xx, yy, target, debug?)
/// @param xx
/// @param  yy
/// @param  target
/// @param  debug?
/** 
 *  It draws a box.
**/

var px = argument[0]; // x coord of collision check
var py = argument[1]; // y coord of collision check
var target = argument[2]; // Which object this collision is being checked for
var debug = argument[3];

// Top half
var xx = target.x;
var yy = target.y;

var x1 = xx + target.sprite_width;
var y1 = yy + target.sprite_height / 2;

// Bottom half
/*var xx = target.x;
var yy = target.y + 24;

var x1 = xx + 24
var y1 = yy + 24;*/
    
if (!debug) {
    // Check for collision
    var rectangle = point_in_rectangle(px, py, xx, yy, x1, y1);
    return rectangle;
} else {
    if (global.debug) {
        // Draw collision box
        draw_set_color(c_orange);
        draw_rectangle(xx, yy, x1, y1, false);
    }
}
