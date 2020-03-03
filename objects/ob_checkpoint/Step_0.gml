// Activate Checkpoint
if (place_meeting(x, y, ob_player)) {
    global.checkpoint = id;
    global.checkpointx = x;
    global.checkpointy = y;
    global.checkpointr = room;
}

// Checkpoint Animation
if (global.checkpointr == room) {
    if (global.checkpoint == id) {
        image_index = 1;
    } else {
        image_index = 0;
    }
}

image_angle++;

