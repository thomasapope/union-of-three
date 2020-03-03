/// sc_death()
// What happens when we die? //

// Go To Checkpoint If Possible
if (global.checkpointr != 0) {
    hp = MAX_HP;
    if (global.checkpointr == room) {
        x = global.checkpointx;
        y = global.checkpointy;
    } else {
        room_goto(global.checkpointr);
    }
} else {
    hp = MAX_HP;
    x = startx;
    y = starty;
}

sc_player_clear();
