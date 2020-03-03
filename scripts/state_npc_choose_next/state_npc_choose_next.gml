/// @description  sc_npc_choose_next_state()
if (alarm[2] <= 0) {
    alarm[2] = room_speed * irandom_range(2, 4);
    if (!search) {
        state = choose(state_npc_wander, state_npc_idle)
        ty = random(room_height);
        tx = random(room_width);
    }
}

/*//if (alarm[2] <= 0 && search == 0) {
    state = choose(state_npc_wander, state_npc_idle)
    ty = random(room_height);
    tx = random(room_width);
    search = 1;
//}*/
