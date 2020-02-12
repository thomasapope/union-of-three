/// action_fire_weapon (weapon, creator, dir)

var weapon = argument[0];
var creator = argument[1];
var dir = argument[2];

var damage = global.weapon_array[weapon, 3];
var inaccuracy = global.weapon_array[weapon, 5];
var velocity = global.weapon_array[weapon, 6];
var crit = global.weapon_array[weapon, 7];

var px = x + lengthdir_x(global.weapon_array[weapon, 10], dir);
var py = y + lengthdir_y(global.weapon_array[weapon, 10], dir);

dir += random_range(-inaccuracy, inaccuracy); // Make weapon inaccurate

// Projectile Weapons
if (global.weapon_array[weapon, 8] == 0) {
    // Fire
    var i = instance_create(px, py, ob_projectile);
        i.creator = creator;
        i.dir = dir;
        i.sprite_index = global.weapon_array[weapon, 2];
        i.damage = damage;
        i.velocity = velocity;
        i.cancrit = crit;
} 

// Hitscan Weapons
if (global.weapon_array[weapon, 8] == 1) {
    // Scan for a hit
    var temp_x = px + lengthdir_x(4, dir);
    var temp_y = py + lengthdir_y(4, dir);
    var startx = temp_x;
    var starty = temp_y;
    var collision = position_meeting(temp_x, temp_y, PAR_SOLID) || (position_meeting(temp_x, temp_y, PAR_BREAKABLE) && !position_meeting(temp_x, temp_y, creator));
    while (!collision && distance_to_point(temp_x, temp_y) < room_width) {
        temp_x += lengthdir_x(4, dir);
        temp_y += lengthdir_y(4, dir);
        collision = position_meeting(temp_x, temp_y, PAR_SOLID) || (position_meeting(temp_x, temp_y, PAR_BREAKABLE) && !position_meeting(temp_x, temp_y, creator));
    }
    
    // Draw hitscan line
    var i = instance_create(temp_x, temp_y, ob_draw_line);
        i.startx = startx;
        i.starty = starty;
        i.fade = ds_list_find_value(global.weapon_array[weapon, 2], 0);
        i.width = ds_list_find_value(global.weapon_array[weapon, 2], 1);
        i.color_one = ds_list_find_value(global.weapon_array[weapon, 2], 2);
        i.color_two = ds_list_find_value(global.weapon_array[weapon, 2], 3);
    
    // Fire
    var j = instance_create(temp_x, temp_y, ob_hitscan);
        j.startx = startx;
        j.starty = starty;
        j.creator = creator;
        j.dir = dir;
        j.damage = damage;
        j.velocity = velocity;
        j.cancrit = crit;
} 
