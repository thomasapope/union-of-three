// Zoom in
if (keyboard_check_pressed(ord("Z"))) {
    zoom++;
    
    if (zoom > max_zoom) {
        zoom = BASE_ZOOM;
    }
    
    window_set_size(ideal_width*zoom, ideal_height*zoom);
    surface_resize(application_surface, ideal_width*zoom, ideal_height*zoom);
    
    alarm[0] = 1;
}

// Exit Game
if (keyboard_check_pressed(vk_escape)) {
    game_end();
}

