if (ob_player.key_activate) {
    dir = place_meeting(bbox_left-1, y, ob_player) - place_meeting(bbox_right+1, y, ob_player);    
    
    if (dir != 0) {
        if (ob_player.state == player_state_move) {
            ob_player.state = player_state_push;
        } else {
            ob_player.state = player_state_move;
        }
    }
}

if (dir == 1) {
    x = ob_player.bbox_right + 1;
}
if (dir == -1) {
    x = ob_player.bbox_left - 32;
}

if (ob_player.bbox_top > bbox_bottom) {
    ob_player.state = player_state_move;
    dir = 0;
}

