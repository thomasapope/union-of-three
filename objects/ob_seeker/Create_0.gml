/// @description  Initialize Seeker

// STATS
acc = .2; // acceleration
chase_speed = random_range(3.8, 4.2);
idle_speed = 3;
//maxspd = random_range(4.5, 5); // range of values maxspd can be
maxspd = chase_speed;
xaxis = 0;
yaxis = 0;
initialize_movement_entity(  0,       // gravity
                            .1,       // friction
                            0,        // air resistance
                            0,     // bounciness
                            PAR_SOLID);   // collision object

event_inherited();
attack = 10;
hp = 200;

mobile = 1;
text = 1;
//crit = 1;
            
// States 
state = state_npc_chase;
//state = state_npc_chase;
alarm[2] = room_speed * irandom_range(2, 5);

// Target variables                
seen = false; // (boolean) has line of sight?
los = false;
tx = x; // x value of target
ty = y; // y value of target
lastx = x; // x value where target was last seen
lasty = y; // y value where target was last seen
target = ob_player;

// Pathfinding
search = 0;
path = path_add(); // Create path
set = 0; // Whether or not path is being used
tick = 30; // How frequently new paths are generated
alarm[1] = tick; // Set path reset alarm

image_speed = 1 / room_speed;

