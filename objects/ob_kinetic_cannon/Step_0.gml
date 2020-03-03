/// @description  Launch the player
if (powered) {
    if (place_meeting(x, y-1, ob_player)) {
        var inst = instance_place(x, y-1, ob_player);
        sc_jump(height, grav, inst.AIR_SPEED, h_move, axis, inst);
    }
}

