var pushspd = 2;

// Get pushed
if (instance_exists(ob_player)) {
    if (!place_meeting(x,y-1,ob_player) ) { 
        if (ob_player.xaxis = -1) {
            if (place_meeting(x+pushspd,y,ob_player)) {
                //if !place_meeting(x-1,y,PAR_SOLID) {
                    //x -= pushspd;
                    //ob_player.x += -pushspd;
                    hsp[0] = -pushspd;
                    ob_player.hsp[0] = -pushspd;
                //}
             }
         }
         if (ob_player.xaxis = 1) {
             if (place_meeting(x-pushspd,y,ob_player)) {
                //if !place_meeting(x+1,y,PAR_SOLID) {
                    //x += pushspd; 
                    //ob_player.x += pushspd;
                    hsp[0] = pushspd; 
                    ob_player.hsp[0] = pushspd;
                //}
            }
        }
    }
}

move_movement_entity();

