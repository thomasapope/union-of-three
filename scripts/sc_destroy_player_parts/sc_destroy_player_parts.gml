/// @description  sc_destroy_player_parts()

with (head) {
    instance_destroy();
    head = noone;
}
with (arm) {
    instance_destroy();
    arm = noone;
}
// Destroy the arms
/*if (instance_exists(ob_arm)) {
    for (var k=0; k<instance_number(ob_arm); k++) {
        var inst = instance_find(ob_arm, k);
        if (inst.creator == id) {
            with (inst) {
                instance_destroy();
            }
        break;
        }
    }
}

// Destroy the head
if (instance_exists(ob_head)) {
    for (var k=0; k<instance_number(ob_head); k++) {
        var inst = instance_find(ob_head, k);
        if (inst.creator == id) {
            with (inst) {
                instance_destroy();
            }
        break;
        }
    }
}*/
