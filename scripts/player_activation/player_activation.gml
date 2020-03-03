/// @description  player_activation()
/*
    Returns true if player presses the activation button
*/

var boolean = false;

if (instance_exists(ob_player)) {
    with (instance_nearest(x, y, ob_player)) {
        if (key_activate) {
            boolean = true;
        }
    }
}

return boolean;
