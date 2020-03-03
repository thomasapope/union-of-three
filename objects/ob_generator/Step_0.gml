/// @description  Generate Barrier
if (!powered) { // if power is turned off
    // Destroy barrier
    if (dir == 0) {
        with instance_place(x+33, y, ob_barrier)
            instance_destroy();
        //xx = x + 32;
    } else {
        with instance_place(x, y+33, ob_barrier)
            instance_destroy();
        //yy = y + 33;
    }
}
if (powered) { // if power is turned on
    // Generate barrier
    if (dir == 0) {
        if (!place_meeting(x+33, y, ob_barrier) && alarm[0] <= 0) {
            // Create Barrier
            var i = instance_create(x+33, y, ob_barrier);
                i.image_xscale = scale-1; 
        }
    } else {
        if (!place_meeting(x, y+33, ob_barrier) && alarm[0] <= 0) {
            // Create Barrier
            var i = instance_create(x, y+33, ob_barrier);
                i.sprite_index = sp_barrier_vert;
                i.image_yscale = scale-1; 
        }
    }
}

