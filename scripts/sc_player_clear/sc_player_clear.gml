/// @description  sc_player_clear()
/** 
 *  Clears motion path and halts player movement. 
 *  Used for whenever player moves between rooms. 
**/

// Stop Player
hsp[0] = 0;
vsp[0] = 0;

hsp[1] = 0;
vsp[1] = 0;

// Clear Motion Path
path_clear_points(motion);

// Start room on ground
while (!place_meeting(x, y+1, collision_object)) {
    y += 1;
}
