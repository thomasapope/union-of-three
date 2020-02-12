///player_state_move()
/**
 *  Main player state
 *
 *  Player can move freely and perform all platform actions
**/                            

// Check if player is walking or running
var f = FRICTION; // f == friction

if (walking) { // player is walking
    groundspd = WALK_SPEED;
} else { // player is running
    switch (empowered) {
        case 0: 
            groundspd = RUN_SPEED - 1; // reduced run speed without the kinesis
            break;
        case 1:
            groundspd = RUN_SPEED;
    }
    f += .1; // slightly more friction when running to give grip
}

// Check if player has the kinesis
var preset, a; // a = acceleration

if (empowered) {
    preset = 4;
    airspd = AIR_SPEED;
    a = GROUND_ACCELERATION
    
    // Enable empowered movement options
    enable_movement_wall_jump(airspd, key_jump, key_jump_press, xaxis);
    enable_movement_air_jump(key_jump_press, xaxis, airspd);
} else {
    preset = 1;
    airspd = 4; // reduced airspd
    a = GROUND_ACCELERATION - .1; // reduced acceleration
}


// Set Gravity - Preset: Default
if (ground) {
    grav = g[0];
    acc = a;
}

// Set Friction
fric = f; 

// Enable universal movement options
enable_movement_run(acc, groundspd, airspd, xaxis);
enable_movement_jump(key_jump_press, key_jump_release, key_jump, xaxis, airspd, preset);
//enable_action_push();

// Get direction of hsp             
if (xaxis != 0) {
    hsp_dir = sign(hsp[0]);
}

// Move the entity
move_movement_entity(20);

// Enable ledge grabbing
enable_movement_ledge_grab();


// Climb Ladders
var ladder = collision_line(x-20, y, x+20, y, ob_sideladder, 0, 1)
if(ladder && key_activate) {
    if (ladder.image_xscale == 1) { // ladder to the right of player
        while (bbox_right != ladder.bbox_left - 1) {
            if (bbox_right < ladder.bbox_left - 1) {
                x += 1;
            }
            if (bbox_right > ladder.bbox_left - 1) {
                x -= 1;
            }
        }
        hsp_dir = 1;
    }
    if (ladder.image_xscale == -1) { // ladder to the left of player
        while (bbox_left != ladder.bbox_right + 1) {
            if (bbox_left > ladder.bbox_right + 1) {
                x -= 1;
            }
            if (bbox_left < ladder.bbox_right + 1) {
                x += 1;
            }
        }
        hsp_dir = -1;
    }
        
    hsp[0] = 0;
    hsp[1] = 0;
    vsp[0] = 0;
    vsp[1] = 0;
    state = player_state_ladder;
}


// Go through doors
var door = instance_place(x, y, PAR_DOOR);
if (door && (key_activate || (door.border_door && door.border_dir == sign(hsp[0])))) {
    // Go to target room
    if (door.target_room != room) { // Don't change rooms if we're already there
        room_goto(door.target_room);
    }
    
    // Position self
    sc_player_clear();
    x = door.target_x;
    y = door.target_y;
    ob_camera.x = x;
    ob_camera.y = y;
}   

// Talk to people
var a = instance_place(x, y, PAR_TALK) 
if (a) {
    if (key_activate) {
        if (a.talk == 0) {
            a.talk = 1;
            state = player_state_talk;
            sound_play(snd_talkinit);
        }
    }
}
