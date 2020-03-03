// Scan Length and Create Opposite Generator
var xx = x + 32;
var yy = y + 32;
if (dir == 0) { // Horizontal Barriers
    while (!place_meeting(xx+32, y, PAR_SOLID)) {
            if (place_meeting(xx+64, y, PAR_SOLID)) {
                // Create Opposite Generator 
                xx += 32;
                var j = instance_create(xx+1, y, ob_wall);
                    j.sprite_index = sp_generator;
                    j.image_index = 1;
                    j.image_speed = 0;
            } else {
            xx += 32;
            }
        }
    scale = (xx - x) / sprite_width; // Fits barrier to the length it needs 
} else { // Vertical Barriers
    while (!place_meeting(x, yy+32, PAR_SOLID)) {
            if (place_meeting(x, yy+64, PAR_SOLID)) {
                // Create Opposite Generator 
                yy += 32;
                var j = instance_create(x, yy+1, ob_wall);
                    j.sprite_index = sp_generator;
                    j.image_index = 3;
                    j.image_speed = 0;
            } else {
            yy += 32;
            }
        }
    scale = (yy - y) / sprite_height; // Fits barrier to the length it needs 
}

// Setup Barrier Direction
if (dir == 1) {
    image_index = 2;
}

