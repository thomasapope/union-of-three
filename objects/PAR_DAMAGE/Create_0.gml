/// @description  Initialize damage object

// Passed Variables
/* To be passed down by creating object. */
creator = noone; // id of object that created this damage object
damage = 1; // amount of damage dealt upon attack
dir = 90;
velocity = 1;
cancrit = 1; // whether or not damage can deal critical hits
critical = 2; // how many times more damage critical hits deal
knockback = 4;

// Local Variables
/* For internal calculations and checks. */
hasdamaged = false; // whether or not this object has already damaged
dealt = damage; // how much damage was dealt 
alarm[0] = 5; // destruction alarm

col = make_color_rgb(192, 192, 0);
bot_col = make_color_rgb(192, 192, 0);
font = fn_01;

/* */
/*  */
