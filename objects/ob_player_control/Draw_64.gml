/// @description  Draw debug information
if (global.debug == 1) {
    draw_set_font(fn_02);
    draw_set_color(c_white);
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text(5, 5, string_hash_to_newline("real fps: " + string(fps_real) + "#" +
                    "fps: " + string(fps) + "#" +
                    room_get_name(room) + "#" +
                    "Number of objects: " + string(instance_count) + "#" +
                    "#" +
                    "#" +
                    "PLAYER STATS" + "#" +
                    "hp: " + string(ob_player.hp) + "#" +
                    "Speed: " + string(ob_player.hsp[0] + ob_player.hsp[1]) + "#" +
                    //"(walk, kinesis): (" + string(ob_player.walking) + ", " + string(ob_player.empowered) + ")#" +
                    string(global.weapon_array[ob_player.weapon, 0]))
              );
              
    draw_set_halign(fa_right);
    /*draw_text(display_get_gui_width()-5, 5, display_write_specs(display.screen)+"#"+
              display_write_specs(display.window)+"#"+
              display_write_specs(display.app_surface)+"#"+
              display_write_specs(display.view)+"#"+
              display_write_specs(display.gui)
              );*//*draw_set_halign(fa_right);*/
    draw_text(display_get_gui_width()-5, 5, string_hash_to_newline(string(ob_player.walking)+"#" +
            string(ob_player.empowered))
              );
}

/* */
/*  */
