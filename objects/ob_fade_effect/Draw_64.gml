/// @description  Draw Fade
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

//draw_text(display_get_gui_width()/2, display_get_gui_height()/2, string_hash_to_newline("still here"));

