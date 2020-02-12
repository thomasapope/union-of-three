#define sc_room_code
//Establish Gravity and other room-specific variables

var grav = .5;

if room = rm_alphatest {
    grav = .7;
}

if room = rm_testinghall {
    grav = 1.0;
}

return grav;

#define script10
