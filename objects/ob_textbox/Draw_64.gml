/// @description  Draw Textbox
//draw_set_font(fnt_textbox);
draw_set_font(fn_textbox);
draw_set_halign(fa_left);
draw_set_color(c_white);

// Draw avatars
if (ci_count > 0) {
    draw_sprite_ext(ci_id[0], 0, ci_xpos[0], 191, ci_flip[0], 1, 0, c_white, 1);
    if (ci_count > 1) {
        draw_sprite_ext(ci_id[1], 0, ci_xpos[1], 191, ci_flip[1], 1, 0, c_white, 1);
    }
}

// Draw question box
if (text_option > 2) {
  sc_drawqbox()
}

// Draw textbox
draw_set_color(c_black);
draw_rectangle(0, TEXTBOX_Y+drawbox_y, display_get_gui_width(), display_get_gui_height(), false); // bottom box 
draw_rectangle(0, drawbox2_y, display_get_gui_width(), drawbox2_y+drawbox2_yy, false); // top box
draw_sprite(spr_namebox, namebox_size, 0, NAMEBOX_Y+drawbox_y); // namebox
draw_set_color(c_white);

// Draw name
if (alarm[2] < 0) { //This is so it doesn't break setting text_id upon creation through other objects
    draw_text(NAME_X, NAMEBOX_Y+drawbox_y, string_hash_to_newline(namebox_name));
}

// Draw text
draw_text(TEXT_X, TEXT_Y+drawbox_y, string_hash_to_newline(string_copy(str_edited, 1, chr_)));
if (str_colorc > 0) { // colored text
    draw_set_color(str_colorc);
    draw_text(TEXT_X, TEXT_Y+drawbox_y, string_hash_to_newline(string_copy(str_colored, 1, str_inline+string_count("#", string_copy(str_edited, 1, chr_)))));
}

// Draw arrows // after text is finished being written
if (arrow_drawer == 1) {
    if (text_option > 0) {
        if (text_option < 3) {
            if (text_option == 1) {
                draw_set_color(make_color_rgb(0,184,0));
                draw_text(3, 180+drawbox_y, string_hash_to_newline("##  - "+option_text[0]));
                draw_set_color(c_white);
                draw_text(3, 180+drawbox_y, string_hash_to_newline("###  - "+option_text[1]));
            } else {
                draw_text(3, 180+drawbox_y, string_hash_to_newline("##  - "+option_text[0]));
                draw_set_color(make_color_rgb(0,184,0));
                draw_text(3, 180+drawbox_y, string_hash_to_newline("###  - "+option_text[1]));
                draw_set_color(c_white);
            }
        }
    } else {
        draw_sprite(spr_textboxarrow, 0, display_get_gui_width()-10, display_get_gui_height()-8);
    }
}

