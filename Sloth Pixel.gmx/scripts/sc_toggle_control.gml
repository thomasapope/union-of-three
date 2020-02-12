/// sc_toggle_control()

// Toggle body control
//control = toggle(control);

// Toggle arm control
if (instance_exists(ob_arm)) {
    for (var k=0; k<instance_number(ob_arm); k++) {
        var inst = instance_find(ob_arm, k);
        if (inst.creator == id) {
            with (inst) {
                control = toggle(control);
            }
        }
        break;
    }
}

// Toggle head control
if (instance_exists(ob_head)) {
    for (var k=0; k<instance_number(ob_head); k++) {
        var inst = instance_find(ob_head, k);
        if (inst.creator == id) {
            with (inst) {
                control = toggle(control);
            }
        }
        break;
    }
}
