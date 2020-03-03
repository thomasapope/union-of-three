/// @description  Room Start Setup

// Move to Checkpoint
if (global.checkpointr == room) {
    x = global.checkpointx;
    y = global.checkpointy;
}

// Start room on ground
/*while (!place_meeting(x, y+1, collision_object)) {
    y += 1;
}*/

// Create body parts
sc_create_player_parts();

// Visual cleanup
sc_player_clear();

/* */
/*  */
