/// player_crit(px, py, target, debug?)
/** 
 *  The crit location check for ob_player
 *
 *  Checks for the head of the player
**/

var px = argument[0]; // x coord of collision check
var py = argument[1]; // y coord of collision check
var target = argument[2]; // Which object this collision is being checked for
var debug = argument[3];

var head = target.head;

var x1 = head.bbox_left;
var y1 = head.bbox_top;
var x2 = head.bbox_right;
var y2 = head.bbox_bottom;

if (!global.debug || !debug) {
    // Check for collision
    return collision_point(px, py, head, true, true);
} else {
    if (global.debug) {
        // Draw collision box
    }
}
