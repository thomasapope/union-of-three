// Draw Debug stuff
if (global.debug = 1) {
    draw_set_font(fn_01);
    draw_set_halign(fa_left);
    draw_text(lastx+16, lasty, string_hash_to_newline("lastx (" + string(lastx)+","+string(lasty)+")")); // lastx and lasty
    draw_text(x+sprite_width/2, y+20, string_hash_to_newline("seen "+string(seen))); // LOS?
    draw_text(x+sprite_width/2, y+10, string_hash_to_newline(object_get_name(target))); // target name
    draw_set_color(c_blue);
    //if (!los && set)
        draw_path(path, x, y, true);
    //else
        //draw_line(x, y, tx, ty) // line to target
    draw_set_color(c_orange);
    draw_circle(tx, ty, 4, false);
};

// Draw self
draw_self();
draw_path(path, x, y, true);

