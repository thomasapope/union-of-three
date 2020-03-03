/// @description sc_debug(object position, hspd and vspd, bot commands, xdistance, colour)
/// @param object position
/// @param  hspd and vspd
/// @param  bot commands
/// @param  xdistance
/// @param  colour
/*
    Enables a view showing more information on objects. 
    what arguments you enable determine what variables
    will be displayed.
*/

var coord = argument[0]; // where the object is
var hv_spd = argument[1]; // how fast the object is moving
var bot_com = argument[2]; // displays all bot commands ( lastx, lasty, targetseen, target, targetx, targety) USE ONLY FOR BOTS
var xdis = argument[3] + 1; // how wide the objects sprite is so the text is not underneath it
var col = argument[4]; // what color the debug information will be displayed in

// Debug Color
draw_set_colour(col);
draw_set_font(fn_01);

// X and Y coordinates

// hspd and vspd

// bot commands
if bot_com
{
    if object_exists(target)
    {
        draw_line(x,y,tx,ty)// targetx and targety displayed as line from bot to targetx,targety
        draw_text(lastx + 16,lasty,string_hash_to_newline("lastcoord (" + string(lastx) + "," + string(lasty) + ")")); // lastx and lasty
        draw_text(x + xdis,y + 10,string_hash_to_newline("targetseen = " + string(seen))); // whether or not the bot sees its target
        draw_text(x + xdis,y,string_hash_to_newline(object_get_name(target))); // what the bots target is
        draw_text(x + xdis, y + 20, string_hash_to_newline(string(state)));
    }
}

