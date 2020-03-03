/// @description  trigger(channel, system)
/// @param channel
/// @param  system
/* 
    Triggers all system objects of type system and channel channel
*/

channel = argument[0];
system = argument[1];

var k;
for (k=0; k<instance_number(system)/*-1*/; k++) { // Cycle through all instances of selected object
    // Store all instance of obect system in array inst
    var inst; 
    inst[k] = instance_find(system, k);
    if (channel == inst[k].channel) { 
        inst[k].powered = toggle(inst[k].powered); // I/O
        inst[k].change = 1; // Indicates that the system just changed
    }
}
