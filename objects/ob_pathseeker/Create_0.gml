/// @description  Initialize Seeker

// STATS
acc = .25; // acceleration
maxspd = 7//random_range(4.5, 5); // range of values maxspd can be
xaxis = 0;
initialize_movement_entity(  0,       // gravity
                            .1,       // friction
                            0,        // air resistance
                            0,     // bounciness
                            PAR_SOLID);   // collision object

event_inherited();
attack = 10;
hp = 700;
            
// Target variables                
seen = false; // (boolean) has line of sight?
tx = x; // x value of target
ty = y; // y value of target
lastx = x; // x value where target was last seen
lasty = y; // y value where target was last seen
target = ob_player;

// Pathfinding
patha = path_add();
set = 0;
ind = 0;
tick = 40;
alarm[1] = tick;

image_speed = 1 / room_speed;

