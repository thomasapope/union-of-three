/// @description  Spawn Alarm
if (amount > 0) {
    image_index = 1; // Open hatch
    amount--;
    alarm[1]=SPAWN_INTERVAL * (1 / 3);
    
    instance_create(x+4, y+4, ob_seeker); // Spawn
} else {
    image_index = 0; // Close hatch
    alarm[0] = SPAWN_INTERVAL * (2 / 3); // Reset alarm
}

