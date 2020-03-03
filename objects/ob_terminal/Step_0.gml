// Toggle systems with the correct object and channel
if (player_proximity(48)) {
    image_index = 1; // Change the animation if the player is close
    if (player_activation()) { // If player activates this terminal
        if (ob_player_control.access[channel] == 1) { // If player has access to this channel
            trigger(channel, system);
        } else {
            // Draw "Access Denied"
            var i = instance_create(x, y-16, ob_draw_text);
                i.fade = .001;
                i.ascent = .005;
                i.str = "Access Denied";
        }
    }
} else {
    image_index = 0;
}

