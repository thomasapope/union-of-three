// Apply collsion box if player 
if (instance_exists(ob_player)) {
    if (round(ob_player.y + 17) > y || ob_player.key_down) {
        mask_index = sp_empty_mask;
    } else {
        mask_index = sp_platform;
    }
}

