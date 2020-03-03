/// @description  scr_drawqbox();
//This script draws the question box.  You'll need to align text
//depending on your question box size.
//draw_sprite(spr_questionbox, qbox_questions-2, (display_get_gui_width()-sprite_get_width(spr_questionbox))/2, qbox_y);
draw_set_color(c_black);
var temp = qbox_y + 1 + (6 - qbox_questions) * 6;
draw_roundrect((display_get_gui_width()-qbox_width)/2-1, temp, (display_get_gui_width()-qbox_width)/2 + qbox_width-1, temp+20+((qbox_questions-1)*12), false);

draw_set_color(c_white);
draw_set_halign(fa_middle);

switch(qbox_questions) {
    case 2:
        if (text_option == 3) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+28, string_hash_to_newline(option_text[2]));
        draw_set_color(c_white);
        if (text_option == 4) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+40, string_hash_to_newline(option_text[3]));
        draw_set_color(c_white);
        break;
    case 3:
        if (text_option == 3) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+21, string_hash_to_newline(option_text[2]));
        draw_set_color(c_white);
        if (text_option == 4) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+33, string_hash_to_newline(option_text[3]));
        draw_set_color(c_white);
        if (text_option == 5) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+45, string_hash_to_newline(option_text[4]));
        draw_set_color(c_white);
        break;
    case 4:
        if (text_option == 3) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+16, string_hash_to_newline(option_text[2]));
        draw_set_color(c_white);
        if (text_option == 4) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+28, string_hash_to_newline(option_text[3]));
        draw_set_color(c_white);
        if (text_option == 5) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+40, string_hash_to_newline(option_text[4]));
        draw_set_color(c_white);
        if (text_option == 6) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+52, string_hash_to_newline(option_text[5]));
        draw_set_color(c_white);
        break;
    case 5:
        if (text_option == 3) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+10, string_hash_to_newline(option_text[2]));
        draw_set_color(c_white);
        if (text_option == 4) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+22, string_hash_to_newline(option_text[3]));
        draw_set_color(c_white);
        if (text_option == 5) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+34, string_hash_to_newline(option_text[4]));
        draw_set_color(c_white);
        if (text_option == 6) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+46, string_hash_to_newline(option_text[5]));
        draw_set_color(c_white);
        if (text_option == 7) {
            draw_set_color(make_color_rgb(0, 184, 0));
        }
        draw_text(display_get_gui_width()/2, qbox_y+58, string_hash_to_newline(option_text[6]));
        draw_set_color(c_white);
        break;    
}
draw_set_halign(fa_left);
