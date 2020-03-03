var i = instance_create(other.x, other.y, PAR_DAMAGE);
    i.damage = 25; // Damage player based on speed
    i.creator = id;
//other.vsp[0] = other.vsp[0] * -.75; /* Cause player to bounce off barrier */
//other.hsp[0] = other.hsp[0] * -.75; /*                                    */

other.vsp[0] = -sign(other.vsp[0]) * 6; /* Cause player to bounce off barrier */
other.hsp[0] = -sign(other.hsp[0]) * 6; /*                                    */

/* */
/*  */
