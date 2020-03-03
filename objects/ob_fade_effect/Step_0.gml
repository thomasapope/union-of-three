/// @description  Fade
if (!bound) { // simple fade
    switch (dir) {
        case 1: // fade out
            if (alpha < MAX_FADE) { 
                alpha += FADE_SPEED * dir;
            } else {
                instance_destroy();
            }
            break;
        case -1: // fade in
            if (alpha > 0) {
                alpha += FADE_SPEED * dir;
            } else {
                instance_destroy();
            }
            break;
    }
//} else { // bound fade
    
}

