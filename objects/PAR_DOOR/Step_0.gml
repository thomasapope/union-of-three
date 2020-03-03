// Fade out 
if (border_door) {
    if (instance_exists(ob_player)) {
        if (within(xx, ob_player.x, FADE_DISTANCE)) {
            var temp_alpha = MAX_FADE - ((xx - ob_player.x) * border_dir / FADE_DISTANCE);
            
            if (!instance_exists(ob_fade_effect)) fade = fade_bound(1);
            
            if (fade) {
                if (fade.alpha < temp_alpha) {
                    if (sign(ob_player.hsp[0]) == border_dir) {
                        fade.alpha = temp_alpha;
                    }
                } else {
                    fade.alpha = temp_alpha;
                }
            }
        } else {
        // get rid of the fade object 
            if (fade) {
                with(fade) {
                    instance_destroy();
                }
                fade = noone;
            }
        }
    }
} 

