///toggle(val)
/* Toggles passed value from a 1 to a 0 or 
    a 0 to a 1. */

var val = argument[0];
if (!val) {
    val = 1;
} else {
    val = 0;
}

return val;
