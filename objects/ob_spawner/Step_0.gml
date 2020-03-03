/// @description  Destroy Spawner
event_inherited();

if (times >= SPAWN_TIMES) {
    instance_destroy();
}

