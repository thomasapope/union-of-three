/// is_player_proximity(radius) returns boolean
/*
    Returns true if player is within radius
*/

var radius = argument[0];

return (within(x, ob_player.x, radius) && within(y, ob_player.y, radius));
/*if (collision_line(x-radius, y, x+radius, y, ob_player, 0, 1)) {
    return true;
} else {
    return false;
}*/
