/// @description  Tile Slope
var dir = 1;

// Horizontal Tiling
if (place_meeting(x+1, y, PAR_SOLID)) { dir = 1; } // Positive slope
if (place_meeting(x-1, y, PAR_SOLID)) { dir = -1; } // Negative slope

image_xscale = dir;

// Vertical Tiling
if (place_meeting(x, y+1, PAR_SOLID)) { dir = 1; } //Floor slope
if (place_meeting(x, y-1, PAR_SOLID)) { dir = -1; y += sprite_height; } // Ceiling slope
    
image_yscale = dir;

