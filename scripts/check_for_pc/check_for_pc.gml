/// @description  sc_check_for_pc()
var target = ob_player//argument[0];
var vision = __view_get( e__VW.YView, 0 )//argument[1];
var view = true;//(distance_to_object(target) < vision && distance_to_object(target) < vision)

if (instance_exists(target)) {    
    // Check for Line of Sight
    //seen = !collision_line(x, y, target.x, target.y, PAR_SOLID, 0, 1) //&& view // checks if bot can see target
    if (seen == true) {
        tx = target.x;
        ty = target.y;
        lastx = target.x;
        lasty = target.y;
        state = state_npc_chase;
        //alarm[2] = room_speed //* 15;
        //search = 0;
    } else {
        tx = lastx;
        ty = lasty;
        state_npc_choose_next();
    }
} else {
    state_npc_choose_next();
}
