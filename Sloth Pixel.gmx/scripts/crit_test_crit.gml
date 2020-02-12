/// crit_test_crit(xx, yy, target, debug?)
/** 
 *  The crit location check for ob_crit_test
 *
 *  Checks within two rectangles at the bottom and top of the object
**/

var px = argument[0]; // x coord of collision check
var py = argument[1]; // y coord of collision check
var target = argument[2]; // Which object this collision is being checked for
var debug = argument[3];

var xx = target.x;
var yy = target.y;

var x1 = target.c1;
var y1 = target.c2;
var y2 = target.c3;
var y3 = target.c4;
    
if (!debug) {
    // Check for collision
    var top_rectangle = point_in_rectangle(px, py, xx, yy, xx+x1, yy+y1);
    var bottom_rectangle = point_in_rectangle(px, py, xx, yy+y2, xx+x1, yy+y3);
    return top_rectangle || bottom_rectangle;
} else {
    if (global.debug) {
        // Draw collision box
        draw_set_color(c_orange);
        draw_rectangle(xx, yy, xx + x1, yy + y1, false);
        draw_rectangle(xx, yy + y2, xx + x1, yy + y3, false);
    }
}
