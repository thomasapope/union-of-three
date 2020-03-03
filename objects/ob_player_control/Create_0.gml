/// @description  Initialize players
event_inherited();

for (var i = 0; i < 2; i++;) {
    if (instance_exists(instance_find(ob_player, i))) {
        player[i] = instance_find(ob_player, i);
    } else {
        player[i] = noone;
    }
}

// SHARED STATS

// Level Variables
access[0] = 1; // Determines access to various channels
access[1] = 0;
access[2] = 0;

