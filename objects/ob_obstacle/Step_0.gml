// Dealing Damage
if (alarm[0] <= 0) {
    if place_meeting(x, y, ob_player) {
        var i = instance_create(other.x, other.y, PAR_DAMAGE);
            i.damage = 50;
            i.creator = id;
        alarm[0] = 50;
    }
}

