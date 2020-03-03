/// @description  Initialize Global Game Variables
// Game Settings
global.debug = 1;
global.weapons = 1; // Counts from 0, actually 1 more than displayed

sc_weapon_array();

// Checkpoint Settings
global.checkpoint = noone;
global.checkpointr = 0;
global.checkpointx = 0;
global.checkpointy = 0;

//ob_player.player_x = ob_player.xstart;
//ob_player.player_y = ob_player.ystart;

// Move to next room
//room_goto_next();
//room_goto(rm_testinghall);

action_set_cursor(sp_cursor, 0);
