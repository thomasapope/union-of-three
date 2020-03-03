#define approach
///approach(current, target, amount)
/*
    This function can be used to approach a value
    but not pass the value.
*/

var current = argument[0]; // Current value
var target = argument[1]; // Target value
var amount = argument[2]; // Amount to approach each step

// approach the value but don't go over
if (current < target) {
    return min(current+amount, target); 
} else {
    return max(current-amount, target);
}

#define initialize_movement_entity
///initialize_movement_entity(gravity, friction, air_resistance, bounce, collision_object)
/*
    This function is used to initialize a movement entity.
    You need to call this function in the CREATE EVENT of
    any object you would like using the movement functions.
*/

hspd = 0;
vspd = 0;
spd = 0;
dir = 0;

grav = argument[0]; // Gravity amount (positive is down).
fric = argument[1]; // Friction amount (Only applies on ground for Platform Games).
air_res = argument[2]; // Friction for all movement( When gravity is 0 it only applies horizontally)
bounce = argument[3]; // Bounce amount. 0 is no bounce, .5 is half velocity lost, 1 is no velocity lost.
collision_object = argument[4] // The object that will be used for collisions.

horizontal_move_input = false;
vertical_move_input = false;
air_jump = 0;

#define move_movement_entity
///move_movement_entity()
/*
    This function updates the position of the movement entity
    according to its horizontal speed and vertical speed.
    This function should be called at the end of the STEP EVENT for each
    object you want using the movement functions
*/

var yslope = 0; // Used to calculate movement along a slope

// Air jump reset
if (place_meeting(x, y+1, collision_object)) {
    air_jump = 1;
}

// Move down a slope
if (!place_meeting(x+hspd, y, collision_object) && abs(hspd) > 0 && place_meeting(x, y+1, collision_object)) {
    while (!place_meeting(x+hspd, y-yslope, collision_object) && yslope >= -abs(hspd)) {
        yslope--;
    }
    
    // Make sure we actually need to move down
    if (yslope != 0 && place_meeting(x+hspd, y-yslope+1, collision_object)) {
        y -= yslope;
    }
}

// Horizontal check
if (place_meeting(x+hspd, y, collision_object)) {
    // Move up a slope
    while (place_meeting(x+hspd, y-yslope, collision_object) && yslope <= abs(hspd)) {
        yslope++;
    }
    
    if (place_meeting(x+hspd, y-yslope, collision_object)) {
        // Move to contact and bounce
        while (!place_meeting(x+sign(hspd), y, collision_object)) {
            x+=sign(hspd);
        }
        
        // Update the hspeed
        hspd = -(hspd)*bounce;
        
        // Stop bounce at low values
        if (abs(hspd) < 1) hspd = 0;
    } else {
        y -= yslope;
    }
}
x += hspd;

// Vertical collision check
if (place_meeting(x, y+vspd, collision_object)) {
    while (!place_meeting(x, y+sign(vspd), collision_object)) {
        y+=sign(vspd);
    }
    vspd = -vspd*bounce;
    
    // Stop bounce at low values
    if (abs(vspd) < 1) vspd = 0;
    y=round(y);
}
y += vspd;

/// Apply gravity
if (!place_meeting(x, y+1, collision_object)) {
    vspd += grav;
}

// Apply friction
if (place_meeting(x, y+1, collision_object)) {
    if (horizontal_move_input == false) {
        hspd = approach(hspd, 0, fric);
    }
}

// Air resistance
if (horizontal_move_input == false) {
    hspd = approach(hspd, 0, air_res);
}
if (vertical_move_input == false && grav == 0) {
    vspd = approach(vspd, 0, air_res);
}

#define add_movement_horizontal_vertical
///add_movement_horizontal_vertical(hacceleration, vacceleration)
/*
    This function adds a horizontal and/or a vertical acceleration
    to a movement entity. This acceleration will be relative to 
    the previous horizontal speed and vertical speed. It is sort
    of like motion_add but it takes a horizontal acceleration and
    a vertical acceleration as arguments instead of a direction and
    speed.
*/

var hacc = argument[0]; // Horizontal acceleration amount
var vacc = argument[1]; // Vertical accleration amount

// Make sure the movement is relative
hspd += hacc;
vspd += vacc;

#define set_movement_horizontal_vertical
///set_movement_horizontal_vertical(hspeed, vspeed)
/*
    This function sets a horizontal and/or a vertical speed
    to a movement entity. This speed will NOT be relative to 
    the previous horizontal and vertical speeds. It is sort
    of like motion_set but it takes a horizontal and
    vertical speeds as arguments instead of a direction and
    speed.
*/

var hspd = argument[0]; // Horizontal speed
var vspd = argument[1]; // Vertical speed

// Make sure the movement is NOT relative
if (instance_exists(id)) {
    id.hspd = hspd;
    id.vspd = vspd;
}

#define add_movement_direction_acceleration
///add_movement_direction_speed(direction, acceleration);
/*
    This function adds a direction and acceleration
    to a movement entity. This acceleration will be relative to 
    the previous speed of that entity. It works very much like
    motion_add.
*/

var dir = argument[0]; // Direction value
var acc = argument[1]; // Acceleration value

if (instance_exists(id)) {
    var hspd = lengthdir_x(acc, dir);
    var vspd = lengthdir_y(acc, dir);
    id.hspd += hspd;
    id.vspd += vspd;
}

#define set_movement_direction_speed
///set_movement_direction_speed(direction, speed);
/*
    This function sets a direction and acceleration
    to a movement entity. This acceleration will NOT be relative to 
    the previous speed of that entity. It works very much like
    motion_set.
*/

var dir = argument[0]; // Direction value
var spd = argument[1]; // Speed value

if (instance_exists(id)) {
    var hspd = lengthdir_x(spd, dir);
    var vspd = lengthdir_y(spd, dir);
    id.hspd = hspd;
    id.vspd = vspd;
}

#define set_movement_collision_object
///set_movement_collision_object(object)
/*
    Call this function in order to change/set the
    object that will be used for collision checking
    in all your movement entities.
*/

// Set new collision object
collision_object = argument[0];

#define set_movement_friction
///set_movement_friction(amount)
/*
    Call this function in order to set/change
    the friction amount of a movement entity.
*/

// Set new friction
fric = argument[0];

#define set_movement_bounce
///set_movement_bounce(amount)
/*
    Call this function in order to set/change
    the bounce amount of a movement entity.
    
    0  -  No bounce
    .5 -  Half bounce
    1  -  Full bounce
*/

// Set new bounce
bounce = argument[0];

#define set_movement_gravity
///set_movement_grav(amount)
/*
    Call this function in order to set/change
    the gravity amount applied to a movement entity.
*/

// Set gravity
grav = argument[0];

#define enable_movement_platform_actions
///enable_movement_platform_actions(acceleration, run_speed, jump_height, right_input, left_input, jump_input, jump_release_input)
/*
    Call this function to enable basic platform physics on
    a movement entity. It will enable running, jumping, and
    wall jumping. If you want to mix and match the possible
    platform actions you can use the individual "enable_action"
    functions separately in the step event of the movement entity.
    
    The reason you pass the inputs into this function is to
    decouple the actions from their inputs. You could even use
    this same function to enable platfomr actions on an AI.
    You would just pass in different inputs.
*/

var acceleration = argument[0]; // Run acceleration amount
var run_speed = argument[1]; // Maximum run speed
var jump_height = argument[2]; // Jump height (Should be a positive value)
var right_input = argument[3]; // The right input
var left_input = argument[4]; // The left input
var jump_input = argument[5]; // The jump input
var jump_release_input = argument[6]; // The jump release input (This is used to allow controlled jump height)

// Enable running
enable_movement_run_horizontal(acceleration, run_speed, right_input, left_input);

// Enable jumping
enable_movement_jump(jump_height, jump_input, jump_release_input);

// Enable wall jump
enable_movement_wall_jump(jump_height, run_speed, jump_input, right_input, left_input);

#define enable_movement_jump
///enable_movement_jump(height, input, release_input)
/*
    Call this function to enable platform jumping
    on a movement entity.
*/

var height = argument[0]; // The jump height (Should be positive)
var input = argument[1]; // The input for jumping
var release_input = argument[2]; // The input for jump height control (release)

// Check for jump
if (place_meeting(x, y+1, collision_object)) {
    if (input) {
        vspd = -height;
    }
} else {
    if (release_input && vspd <= -height/3) {
        vspd = -height/3;
    }
}

#define enable_movement_run_horizontal
///enable_movement_run_horizontal(acceleration, max_speed, right_input, left_input)
/*
    Call this function in order to enable horizontal
    running on a movement entity.
*/

var acc = argument[0]; // Acceleration value
var max_spd = argument[1]; // Maximum run speed
var right_input = argument[2]; // Right movement input
var left_input = argument[3]; // Left movement input
var hacc = (right_input - left_input)*acc;

horizontal_move_input = hacc != 0;

// Move but only if we aren't already moving too fast
if ((sign(hacc) == -1 && hspd > -max_spd) || (sign(hacc) == 1 && hspd < max_spd)) {
    hspd += hacc;
}

#define enable_movement_run_horizontal_axis
///enable_movement_run_horizontal_axis(acceleration, max_speed, horizontal_axis)
/*
    Call this function in order to enable horizontal
    running on a movement entity.
*/

var acc = argument[0]; // Acceleration value
var max_spd = argument[1]; // Maximum run speed
var haxis = argument[2]; // Horizontal input axis
var hacc = (haxis)*acc;
max_spd = max_spd*abs(haxis);

horizontal_move_input = hacc != 0;

// Move but only if we aren't already moving too fast
if ((sign(hacc) == -1 && hspd > -max_spd) || (sign(hacc) == 1 && hspd < max_spd)) {
    hspd += hacc;
}

#define enable_movement_run_vertical
///enable_movement_run_vertical(acceleration, max_speed, up_input, down_input);
/*
    Call this function in order to enable vertical
    running on a movement entity. (For top down games)
*/

var acc = argument[0]; // Acceleration value
var max_spd = argument[1]; // Maximum run speed
var up_input = argument[2]; // Upwards movement input
var down_input = argument[3]; // Downwards movement input
var vacc = (down_input - up_input)*acc;

vertical_move_input = vacc != 0;

// Move but only if we aren't already moving too fast
if ((sign(vacc) == -1 && vspd > -max_spd) || (sign(vacc) == 1 && vspd < max_spd)) {
    vspd += vacc;
}

#define enable_movement_run_vertical_axis
///enable_movement_run_vertical_axis(acceleration, max_speed, vertical_axis);
/*
    Call this function in order to enable vertical
    running on a movement entity. (For top down games)
*/

var acc = argument[0]; // Acceleration value
var max_spd = argument[1]; // Maximum run speed
var vaxis = argument[2]; // Vertical input axis
var vacc = (vaxis)*acc;
max_spd = max_spd*abs(vaxis);

vertical_move_input = vacc != 0;

// Move but only if we aren't already moving too fast
if ((sign(vacc) == -1 && vspd > -max_spd) || (sign(vacc) == 1 && vspd < max_spd)) {
    vspd += vacc;
}

#define enable_movement_air_jump
///enable_movement_air_jump(height, input)
/*
    Call this function in order to add platform double jumping
    (air jumping) to a movement entity.
*/

var height = argument[0]; // Jump height
var input = argument[1]; // Jump input

// Air jump
if (!place_meeting(x, y+1, collision_object) && air_jump == 1 && input) {
    vspd = -height;
    air_jump--;
}

#define enable_movement_wall_jump
///enable_movement_wall_jump(height, distance, jump_input, right_input, left_input)
/*
    Call this function in order to enable platform wall
    jumping on a movement entity.
*/

var height = argument[0]; // Jump height
var distance = argument[1]; // Distance to check from wall and horizontal jump speed
var jump_input = argument[2]; // Jump input
var right_input = argument[3]; // Right movement input
var left_input = argument[4]; // Left movement input

// Wall jump
if (!place_meeting(x, y+1, collision_object)) {
    // Left wall
    if (place_meeting(x-distance, y, collision_object)) {
        if (jump_input && (right_input - left_input) != 0) {
            hspd += distance;
            vspd = -height;
        }
    }
    
    // Right wall
    if (place_meeting(x+distance, y, collision_object)) {
        if (jump_input && (right_input - left_input) != 0) {
            hspd -= distance;
            vspd = -height;
        }
    }
}

#define change_sprites
///change_sprites(sprite_index, animation_speed, image_index)
var spr = argument[0];
var spd = argument[1];
var idx = argument[1];
if (sprite_index != spr) {
    sprite_index = spr;
    image_index = idx;
    image_speed = spd;
}

#define animation_end
///animation_end
// Will return true if an animation is at its last frame
return animation_hit_frame(image_number - 1);

#define animation_hit_frame
///animation_hit_frame(frame)
var frame = argument[0]; // The frame to check for
// Will return true if an animation is on a specific frame
return (image_index >= frame+1 - image_speed) && (image_index < frame+1);

