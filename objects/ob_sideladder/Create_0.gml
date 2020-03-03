/// @description  Move the ladder up against a wall or ledge
TOP_SCALE = .25; //  the scale of the top of the ladder that is drawn

if (place_meeting(x-31, y, PAR_SOLID)) {
    image_xscale = -1;
}

