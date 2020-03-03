// Draw text
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed_color(x, y, string_hash_to_newline(str), scale, scale, 0, col, col, bot_col, bot_col, image_alpha);

