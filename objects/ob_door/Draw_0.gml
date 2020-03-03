if (powered) {
    col = c_green;
} else {
    col = c_red;
}

if (open) {
    draw_sprite_ext(sp_door, 1, x, y, 1, image_yscale, 0, c_white, 1);
} else {
    //draw_sprite(sp_door, 0, x, y);
    draw_sprite_ext(sp_door, 0, x, y, 1, image_yscale, 0, c_white, 1);
    draw_sprite_part_ext(sp_door, 0, 0, 0, 20, 8, x+2, y+28, 1, image_yscale, col, 1);
}

