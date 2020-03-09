image_index=0;
image_speed=0;

event_inherited();
hp = 10000;
text = 1;

// Constants
SPAWN_INTERVAL = 125 // time between each activation
SPAWN_AMOUNT = 1; // how many will be spawned on each activation
SPAWN_TIMES = 10; // number of times spawner will activate
DISTANCE = 640; // distance the spawner will detect the player to spawn
INITIAL_MULTIPLIER = 2; // multiplier of time before the first spawn cycle

// Counters
amount = 0;
times = 0;

// Start Spawn Cycle
alarm[0]=SPAWN_INTERVAL * INITIAL_MULTIPLIER;

