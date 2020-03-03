/// @description  Initialize the bot
event_inherited();
acc = .5;
ground_speed = random_range(1, 3);
air_speed = ground_speed + 1;

jump = 20;// How high the bot can jump

ground = 0; // Whether or not the bot is on the ground

hp = 1500;

base_attack = 200;

initialize_movement_entity( .5,       // gravity
                            .3,       // friction
                            0,        // air resistance
                            0,     // bounciness
                            PAR_SOLID);   // collision object

seen = 0;// Whether or not the bot sees the target
lastx = x;// X coordinate that the bot last saw the target
lasty = y;// Y coordinate that the bot last saw the target
jumpx = 64;// Maximum x distance the bot will detect and jump to the player
jumpy = 64;// Maximum y distance the bot will detect and jump to the player

// Create Body Parts
//instance_create(x, y, ob_camera);
head = instance_create(x,y,ob_bot_head);
    head.creator = id;
arm = instance_create(x,y,ob_bot_arm);
    arm.creator = id;
    arm.shot_delay = 100; // Time between shots
    arm.vari = 5; // The Level of inaccuracy in shots. Higher is less accurate

