/// @description  Initialize
image_speed = 0;
image_index = 3;

// Make solid
var i = instance_create(x, y, ob_wall);
    i.image_xscale = image_xscale;
    i.image_yscale = image_yscale;
    
// Launch Specifications
h_move = 0; // how much horizontal movement will be added to objects
//height = 320; //how high the player should reach
//width = 256; // how far the player should jump
height = 12.5;
grav = .24;
axis = 0;

// System Properties
event_inherited();
powered = 1;

