//sc_gettarget(target object name)
// Variables
target = argument0;// Who/What the bot is looking for

// Get Target Coordinates
if !collision_line(x + 9, y, target.x, target.y, par_wall, 0, 1) { // checks if bot can see target
    targetseen = true;
    alarm[0] = diligence;
}
else {
    targetseen = false;
}

if targetseen = true { //sets target coordinates if bot can see target
    targetx = target.x;
    targety = target.y;
    lastx = target.x;
    lasty = target.y;
    /* Keeps track of where the target is when 
    the bot can see the target, so if the bot 
    loses sight, it will go here looking for the target*/
}
else if (alarm[0] > 0) {
    targetx = lastx;
    targety = lasty;
}

// diligence
var dire;
if botrand > .5 {
    dire = -1;
} else {
    dire = 1;
}

while lastx != x && alarm[0] <= 0 {
    if !place_meeting(lastx + (32 * dire), lasty, collision_object) {
        lastx += 32;
    } else if !place_meeting(lastx - (32 * dire), lasty, collision_object) {
        lastx -= 32;
    }
    alarm[0] = diligence;
}

/*
if lastx != x && alarm[0] <= 0 {
    if botrand > .5 {
        targetx = 0;
        targety = 0;
    } else {
        targetx = room_width;
        targety = 0;
    }
}*/
