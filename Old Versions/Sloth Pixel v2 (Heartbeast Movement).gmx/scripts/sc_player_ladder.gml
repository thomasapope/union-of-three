sc_get_inputs();
/*
// Ladder Movement
hsp = 0;
vsp = 4 * (key_down - key_up);
x = (instance_nearest(x,y,ob_ladder).x)

if (move != 0) || (!place_meeting(x,y,ob_ladder))
{
    hsp = 0;
    vsp = 0;
    state = global.states_normal;
}
*/
sc_collideandmove();
