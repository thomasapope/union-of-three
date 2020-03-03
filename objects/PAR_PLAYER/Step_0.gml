/// @description  UNIVERSAL STEP EVENT
/** runs regardless of which state the player is in **/

// Ground check
var EARLY_JUMP = 5; // must be at least 1
ground = place_meeting(x, y+EARLY_JUMP, collision_object); 

// Check if dead
if (hp = 0 || y > room_height || y < 0 || x > room_width || x < 0) {
    sc_death();
}

// Get player controls
get_controls(); 

// Switch between walking and running
if (keyboard_check_pressed(vk_shift)) {
    walking = toggle(walking);
}
if (keyboard_check_pressed(vk_enter)) {
    empowered = toggle(empowered);
}

// Change Weapons
if (mouse_wheel_up()) { // Next
    if (weapon < global.weapons) {
        weapon++;
    } else {
        weapon = 0;
    }
}
if (mouse_wheel_down()) { // Previous
    if (weapon > 0) {
        weapon--;
    } else {
        weapon = global.weapons;
    }
}

// EXECUTE PLAYER STATE
script_execute(state);

/* */
/*  */
