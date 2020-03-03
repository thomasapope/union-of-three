if (powered == 1) {
    draw_sprite(sp_energy, 0, x+16+h_move, y-8);
} else {
    draw_sprite(sp_bullet, 0, x+16+h_move, y-8);
}
draw_self();

