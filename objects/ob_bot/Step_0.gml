event_inherited();
target = ob_player;
if instance_exists(target)
    get_target(target);
//enable_movement_platform_actions();

var right = 0;
var left = 0;
var up = 0;
var down = 0; // used to check which direction the target is

if alarm[0] <= 0 {

// Check if touching ground
ground = (place_meeting(x, y + 1, collision_object))
if ground
    up = 0;

// Move in the direction of the target
if tx > x {
        right = 1;
        left = 0;
}

if tx < x {
        right = 0;
        left = 1;
}

    /*// Prevent getting stuck on walls
    if (place_meeting(x + hspd, y, collision_object)) && (ground) && (!place_meeting(x + hspd, y, par_slope))
    {
        up = 1;
        right = 0;
        left = 0;
    }*/
    
    // If target is next to bot, but above it, then jump
    if (ty < y - jumpy) {
        var temprand
        if (tx < x + jumpx) && (tx > x - jumpx) && ground {
            up = 1;
            right = 0;
            left = 0;
        }
    }
    
    // If we have reached the target
    if (tx < x + 8) && (tx > x - 8) && (ty > y - jumpy) {
        right = 0;
        left = 0;
    }
    
    // Animate
    enable_movement_platform_sprites(sp_bot, sp_bot, sp_bot, .25);
    
    /// Move the Bot
    enable_movement_run(acc, ground_speed, air_speed, right, left);
    //enable_movement_rise(acc, ground_speed, air_speed, up, down);
    move_movement_entity();
    
    if place_meeting(x, y, target) {
        var i = instance_create(other.x, other.y, PAR_DAMAGE);
            i.damage = 100;
            i.creator = id;
        alarm[0] = 50;
    }
}

/* */
/*  */
