///get_target(target, vision)
/* Finds the target if in sight. If not in sight, 
    finds the last place the target was seen. */
    
// Declarations
var target = argument[0];// Who/What the bot is looking for
var vision = argument[1];
var view = (distance_to_object(target) < vision);

target = instance_nearest(x, y, target);

// Check for Line of Sight
seen = true; 
//los = true;
//seen = !collision_line(x, y, target.x, target.y, PAR_SOLID, 0, 1) && view; // checks if bot can see target
los = !collision_line(x, y, tx, ty, PAR_SOLID, 0, 1);

//if (los) 
    //wander = 0;
    
if (seen == true) { //sets target coordinates if bot can see target
    //alarm[3] = tick; //* 10;
    tx = target.x;
    ty = target.y;
    lastx = target.x;
    lasty = target.y;
    /* Keeps track of where the target is when 
    the bot can see the target, so if the bot 
    loses sight, it will go here looking for the target*/
} else if (!search) {
    tx = lastx;
    ty = lasty;
}
