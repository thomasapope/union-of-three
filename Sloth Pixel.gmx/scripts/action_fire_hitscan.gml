/// action_fire_hitscan(object, creator, damage, dir, velocity, crit);
var object = argument[0];
var creator = argument[1];
var damage = argument[2];
var dir = argument[3];
var velocity = argument[4];
var crit = argument[5];
    
// Find Target
var temp_dir = dir;// + random_range(-vari, vari);
//var temp_x = x + lengthdir_x(0, temp_dir);
//var temp_y = y + lengthdir_y(0, temp_dir);
var temp_x = x + lengthdir_x(24, temp_dir);
var temp_y = y + lengthdir_y(24, temp_dir);
var startx = temp_x;
var starty = temp_y;
var collision = position_meeting(temp_x, temp_y, PAR_SOLID) || position_meeting(temp_x, temp_y, PAR_BREAKABLE);
while (!collision && distance_to_point(temp_x, temp_y) < room_width) {
    temp_x += lengthdir_x(4, temp_dir);
    temp_y += lengthdir_y(4, temp_dir);
    collision = position_meeting(temp_x, temp_y, PAR_SOLID) || position_meeting(temp_x, temp_y, PAR_BREAKABLE);
}

var line = instance_create(temp_x, temp_y, ob_draw_line);
    line.startx = startx;
    line.starty = starty;

var hitscan = instance_create(temp_x, temp_y, ob_hitscan);
    hitscan.creator = creator;
    hitscan.damage = damage;
    hitscan.dir = dir;
    hitscan.velocity = velocity;
    hitscan.cancrit = crit;
    hitscan.startx = startx;
    hitscan.starty = starty;
