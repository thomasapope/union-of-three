sc_get_inputs();

// Normal Movement
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if (place_meeting(x,y+1,par_wall))
{
   jumps = jumpsmax;
}

if (key_jump) && (jumps > 0) 
{
    jumps -= 1;
    vsp = -jumpspeed;
}
 
if (vsp < 0) && (!key_jump_held) vsp = max(vsp,-jumpspeed/4)

hsp_final = hsp + hsp_carry;
hsp_carry = 0;

/*if (place_meeting(x,y,ob_ladder) && (key_up) || (key_down))
{
    hsp = 0;
    vsp = 0;
    state = global.states_ladder;
}
*/
sc_collideandmove();
