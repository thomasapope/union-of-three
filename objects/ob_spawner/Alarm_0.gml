/// @description  Spawn Set Alarm
if (times < SPAWN_TIMES) {
    if (amount == 0){
            amount = SPAWN_AMOUNT;
            times++;
    }
    alarm[1] = SPAWN_INTERVAL * (1 / 3);
}

