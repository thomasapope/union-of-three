if (player_proximity(radius) && powered) {
    open = 1;
} else {
    open = 0;
}
/*if (player_proximity(radius)) { 
    if (player_activation()) {
        open = toggle(open);
    }
    
}*/

if (open) {
    mask_index = sp_empty_mask;
} else {
    mask_index = sp_door;
}

/* */
/*  */
