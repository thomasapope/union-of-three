// Horizontal Collision
if (place_meeting(x+hsp_final,y,par_wall))
{
    yplus = 0;
    while (place_meeting(x+hsp_final,y-yplus,par_wall) && yplus <= abs(1.25*hsp)) yplus += 1;
    if place_meeting(x+hsp,y-yplus,par_wall)
    {
        while (!place_meeting(x+sign(hsp_final),y,par_wall)) x += sign(hsp);
        hsp_final = 0;
        hsp = 0;
    }
    else
    {
        y -= yplus; 
    }
}

x += hsp_final;

// Vertial Collision
if (place_meeting(x,y+vsp,par_wall))
{
    while(!place_meeting(x,y+sign(vsp),par_wall)) y += sign(vsp);
    vsp = 0;
}

y += vsp;
