// Variables
var target = creator;
var posx = target.x
var posy = target.y
tx = target.tx;
ty = target.ty;
seen = target.seen;

times = ob_bot_head.times;

dir = point_direction(x, y, tx, ty);
fire = seen && image_index = 4;

if alarm[0] <= 0 {
    if (!seen && image_index == 0) {
        alarm[1] = shot_delay / 5;
    }
}

// Move to Player Position

x = posx
y = posy - 4

// Shooting

if (fire) { // firing projectiles
    // Reset the Alarm
    
    //alarm[0] = shot_delay;
    image_index = 0;
    
    // Find Target
    
    var temp_dir = dir + random_range(-vari, vari);
    var temp_x = x + lengthdir_x(0, temp_dir);
    var temp_y = y + lengthdir_x(0, temp_dir);
    var startx = temp_x;
    var starty = temp_y;
    var collision = position_meeting(temp_x, temp_y, PAR_SOLID) || position_meeting(temp_x, temp_y, o_player);
    while (!collision && distance_to_point(temp_x, temp_y) < room_width) {
        temp_x += lengthdir_x(4, temp_dir);
        temp_y += lengthdir_y(4, temp_dir);
        collision = position_meeting(temp_x, temp_y, PAR_SOLID) || position_meeting(temp_x, temp_y, o_player);
    }
    
    var i = instance_create(x, y, ob_projectile);
        i.startx = temp_x;
        i.starty = temp_y;
        i.creator = creator;
        i.damage = creator.base_attack;
        i.dir = dir;
        i.velocity = 20;
    sound_play(snd_altfire);
}/**/

/*if (fire) { // firing hitscan projectiles
    // Reset the Alarm
    
    alarm[0] = shot_delay;
    
    // Find Target
    
    var temp_dir = dir + random_range(-vari, vari);
    var temp_x = x + lengthdir_x(0, temp_dir);
    var temp_y = y + lengthdir_x(0, temp_dir);
    var startx = temp_x;
    var starty = temp_y;
    var collision = position_meeting(temp_x, temp_y, PAR_SOLID) || position_meeting(temp_x, temp_y, PAR_MORTAL);
    while (!collision && distance_to_point(temp_x, temp_y) < room_width) {
        temp_x += lengthdir_x(4, temp_dir);
        temp_y += lengthdir_y(4, temp_dir);
        collision = position_meeting(temp_x, temp_y, PAR_SOLID) || position_meeting(temp_x, temp_y, PAR_MORTAL);
    }
    
    var i = instance_create(temp_x, temp_y, ob_hitscan);
        i.startx = startx;
        i.starty = starty;
        i.creator = PAR_PLAYER;
        i.damage = o_player.attack + random(o_player.crit_range);
    sound_play(snd_altfire);
}/**/

// Rotate Image Angle

image_angle = dir;
image_yscale = times;

/* */
/*  */
