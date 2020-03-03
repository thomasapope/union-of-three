// Target Finding

sc_gettarget(ob_player)

if targetx > x
{
    if (!place_meeting(x+sign(hsp),y,par_wall))
    {
        hsp = movespeed;
    }
    else
    if (!place_meeting(x,y+sign(vsp),par_slope)) && ground
    {
        vsp = -jump;
        hsp = 0;
    }

}
if targetx < x
{
    if (!place_meeting(x,y+sign(vsp),par_wall))
    {
        hsp = -movespeed;
    }
    else
    if (!place_meeting(x+sign(hsp),y,par_slope)) && ground
    {
        vsp = -jump;
        hsp = 0;
    }
}

// Prevent Getting Stuck on walls
if (place_meeting(x+sign(hsp),y,par_wall)) && ground
{
    vsp -= jump;
    hsp = 0;
}

hsp_final = hsp;
sc_collideandmove();// Collision script
