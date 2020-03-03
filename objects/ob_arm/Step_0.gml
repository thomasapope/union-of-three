/// @description  Rotate Sprite and Fire Weapons

// Move to creator object's position
x = creator.x
y = creator.y - 4

// SETUP CONTROLS
var h_point, v_point;
control = creator.control;

switch control
{
    case 0: // Mouse + Keyboard
        h_point = mouse_x;
        v_point = mouse_y;
        break;
    case 1: // Gamepad
        pad = creator.pad_num;
        h_point = x + gamepad_axis_value(pad, gp_axisrh);
        v_point = y + gamepad_axis_value(pad, gp_axisrv);
        break;
}

// ROTATE IMAGE
var dir = point_direction(x, y, h_point, v_point);
var dif = angle_difference(dir, image_angle);
image_angle += median(-20, dif, 20);

// USE WEAPONS AND ABILITIES
var secondary_input = creator.key_secondary;
var weapon = creator.weapon;

// Determine firemode
var fire_input;
switch (global.weapon_array[weapon, 9]) {
    case 0: // Semi-auto
        fire_input = creator.key_primary_press;
        break;
    case 1: // Full-auto
        fire_input = creator.key_primary;
        break;
}

// Fire weapon
if (fire_input && alarm[0] <= 0) { // Fire weapon
    alarm[0] = global.weapon_array[weapon, 4];
    action_fire_weapon(weapon, creator, image_angle);
}
if (secondary_input && alarm[0] <= 0) { // Use Ability
    // Revolver
    /*alarm[0] = shot_delay * 5;
    var attack = 300;
    action_fire_hitscan(ob_hitscan, creator, attack, image_angle, 24, true);*/
    
    alarm[0] = global.weapon_array[4, 4];
    action_fire_weapon(4, creator, image_angle);
}

/* */
/*  */
