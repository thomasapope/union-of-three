/// sc_weapon_array()
/**
 *  Initializes a 2d array that stores weapon information
 *  for all weapons in the game.
 *
 *  For hitscan weapons, ammo index is not a sprite, but
 *  is a ds_list containing a fade rate, width, and two
 *  colors with which to draw the hitscan line.
 *
 *  [i, 0] = Name
 *  [i, 1] = Sprite Index
 *  [i, 2] = Ammo Index
 *      *   // For Hitscans: [fade, width, color1, color2]
 *  [i, 3] = Damage
 *  [i, 4] = Rate of Fire (Higher is slower)
 *  [i, 5] = Inaccuracy (Higher numbers for less accuracy)
 *  [i, 6] = Velocity
 *  [i, 7] = Critical
 *  [i, 8] = Type (Of projectile)
 *      *   0 = projectile
 *      *   1 = hitscan
 *  [i, 9] = Firemode
 *      *   0 = semi_auto
 *      *   1 = full_auto
 *  [i, 10] = Muzzle Offset (For bullet creation)
 *  [i, 11] = x Offset (For gun placement)
 *  [i, 12] = y Offset (For gun placement)
**/

// Setup Empty Array
for (i = 0; i < global.weapons; i++) {
    for (j = 0; j < 13; j++) {
        global.weapon_array[i, j] = 0;
    }
}

// [0] Energy Pistol
global.weapon_array[0, 0] = "Energy Pistol"; // Name
global.weapon_array[0, 1] = sp_arm; // Sprite Index
global.weapon_array[0, 2] = sp_energy; // Ammo Index
global.weapon_array[0, 3] = 75; // Damage
global.weapon_array[0, 4] = 10; // Rate of Fire 
global.weapon_array[0, 5] = 2; // Inaccuracy 
global.weapon_array[0, 6] = 20; // Velocity
global.weapon_array[0, 7] = 1; // Critical
global.weapon_array[0, 8] = 0; // Type
global.weapon_array[0, 9] = 0; // Firemode
global.weapon_array[0, 10] = 6; // Muzzle Offset 
global.weapon_array[0, 11] = 0; // x Offset 
global.weapon_array[0, 12] = -4; // y Offset 

// [1] SMG
global.weapon_array[1, 0] = "SMG"; // Name
global.weapon_array[1, 1] = sp_arm; // Sprite Index
global.weapon_array[1, 2] = sp_bullet; // Ammo Index
global.weapon_array[1, 3] = 30; // Damage
global.weapon_array[1, 4] = 5; // Rate of Fire
global.weapon_array[1, 5] = 4; // Inaccuracy
global.weapon_array[1, 6] = 14; // Velocity
global.weapon_array[1, 7] = 1; // Critical
global.weapon_array[1, 8] = 0; // Type
global.weapon_array[1, 9] = 1; // Firemode
global.weapon_array[1, 10] = 6; // Muzzle Offset
global.weapon_array[1, 11] = 0; // x Offset
global.weapon_array[1, 12] = -4; // y Offset



// [4] Revolver
global.weapon_array[4, 0] = "REvolver"; // Name
global.weapon_array[4, 1] = sp_arm; // Sprite Index
global.weapon_array[4, 2] = ds_list_add(ds_list_create(), .15, 2, c_red, c_orange); // Ammo Index
global.weapon_array[4, 3] = 300; // Damage
global.weapon_array[4, 4] = 30; // Rate of Fire
global.weapon_array[4, 5] = 0; // Inaccuracy 
global.weapon_array[4, 6] = 24; // Velocity
global.weapon_array[4, 7] = 1; // Critical
global.weapon_array[4, 8] = 1; // Type
global.weapon_array[4, 9] = 0; // Firemode
global.weapon_array[4, 10] = 6; // Muzzle Offset
global.weapon_array[4, 11] = 0; // x Offset 
global.weapon_array[4, 12] = -4; // y Offset 


    // Default
    /*alarm[0] = shot_delay;
    var attack = 100;
    action_fire_projectile(ob_projectile, creator, attack, image_angle, 18, true);
    */
    
    // Energy
    //alarm[0] = shot_delay * 3;
    // var attack = 250
    //action_fire_projectile(ob_energy, creator, attack, image_angle, 28, false);
