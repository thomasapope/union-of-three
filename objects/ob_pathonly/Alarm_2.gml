/// @description  Wander
search = 1;
if (/*alarm[2] <= 0 &&*/ search == 0) {
    state = choose(state_npc_wander, state_npc_idle)
    ty = random(room_height);
    tx = random(room_width);
    search = 1;
}

/* */
/*  */
