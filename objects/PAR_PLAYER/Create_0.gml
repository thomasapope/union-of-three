/// @description  INITIALIZE THE PLAYER
event_inherited();
state = player_state_move;
empowered = 1; // has kinesis
walking = 0;
weapon = 0;

// Body Parts
head = noone;
arm = noone;

// INPUT VARIABLES
control = 0;
pad_num = 0;

// MOVEMENT STATS
WALK_SPEED = 3;
RUN_SPEED = 5;
AIR_SPEED = 5;
GROUND_ACCELERATION = .3;
AIR_ACCELERATION = .4;
FRICTION = .2;
AIR_RESISTANCE = 0;
BOUNCINESS = 0;

groundspd = 0;
airspd = 0;
acc = GROUND_ACCELERATION;
hsp_dir = 1;

// Jumping
MAX_JUMPS = 5; // horizontal speed boost player gets when jumping
JUMP_BOOST = 1; // number of jumbs that can be performed in air

jy = y; // used to calculate jump stages
jump = 0; // used for calculating the height of air jumps
air_jumps = MAX_JUMPS;

// Presets
/*jump_height[0] = 104;   jump_width[0] = 120;    // Preset: Default

jump_height[1] = 40;    jump_width[1] = 32;     // Preset: Powerless Jump
jump_height[2] = 64;   jump_width[2] = 56;    // Preset: Jump Middle
jump_height[3] = 64;   jump_width[3] = 64;    // Preset: Jump Final

jump_height[4] = 96;    jump_width[4] = 80;     // Preset: Powered Jump
jump_height[5] = 104;   jump_width[5] = 128;    // Preset: Jump Middle
jump_height[6] = 104;   jump_width[6] = 178;    // Preset: Jump Final*/

// Jump height and gravity presets
height[0] = 104;    jump_height[0] = 8.66;      g[0] = .36; // Preset: Default

height[1] = 40;     jump_height[1] = 7.5;       g[1] = .70; // Preset: Powerless Jump
height[2] = 64;     jump_height[2] = 6.86;      g[2] = .55; // Preset: Jump Middle

height[4] = 96;     jump_height[4] = 12;        g[4] = .75; // Preset: Powered Jump
height[5] = 104;    jump_height[5] = 8.125;     g[5] = .32; // Preset: Jump Middle

// Ledge Grabbing
GRAB_HEIGHT = 8; // Determines the position for the grab check and sprite placement
GRAB_DISTANCE = 10;

// Initialize Movement Entitiy
initialize_movement_entity( g[0],       // gravity
                            FRICTION,       // friction
                            AIR_RESISTANCE,        // air resistance
                            BOUNCINESS,     // bounciness
                            PAR_SOLID);   // collision object

// COMBAT STATS     
MAX_HP = 500;
hp = MAX_HP;

// MISC SETTINGS AND VARIABLES
// Motion Path Settings
MOTION_FREQUENCY = 2; // How often points are added to the path. More is smoother.
MOTION_SEGMENTS = 20; // How many points to path can have at a time.
motion = path_add();
path_set_closed(motion, false);
path_set_precision(motion, 4);
path_add_point(motion, x, y, 100);
alarm[0] = MOTION_FREQUENCY;

startx = x; // Used for resetting after death
starty = y;

mobile = 1; // Player is a moving object
text = 1; // Draw damage text on player when damage is dealt
crit = 1;
crit_location = player_crit;

/* */
/*  */
