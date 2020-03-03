/// @description  Display Properties
ideal_width = 0;
ideal_height = 240;//480;

BASE_ZOOM = 2;
zoom = BASE_ZOOM;
max_zoom = 1;

aspect_ratio = display_get_width() / display_get_height();

ideal_width = round(ideal_height * aspect_ratio);

if (display_get_width() mod ideal_width != 0) {
    var d = round(display_get_width() / ideal_width);
    ideal_width = display_get_width() / d;
}
if (display_get_height() mod ideal_height != 0) {
    var d = round(display_get_height() / ideal_height);
    ideal_height = display_get_height() / d;
}

// Check for odd numbers
if (ideal_width & 1) {
    ideal_width++;
}
if (ideal_height & 1) {
    ideal_height++;
}

// Calculate max zoom
max_zoom = floor(display_get_width() / ideal_width);

for (var i = 0; i <= room_last; i++) {
    if (room_exists(i)) {
        room_set_view(i, 0, true, 0, 0, ideal_width, ideal_height, 0, 0, ideal_width, ideal_height, 0, 0, 0, 0, -1);
        room_set_view_enabled(i, true);
        room_speed = 60;
    }
}

window_set_size(ideal_width*zoom, ideal_height*zoom);
surface_resize(application_surface, ideal_width*zoom, ideal_height*zoom);
display_set_gui_size(ideal_width, ideal_height);
alarm[0] = 1;

/// Initialize Game Variables
global.debug = 1;
global.weapons = 1; // Counts from 0, actually 1 more than displayed

sc_weapon_array();

// Checkpoint Settings
global.checkpoint = noone;
global.checkpointr = 0;
global.checkpointx = 0;
global.checkpointy = 0;

/// Fade Settings
MAX_FADE = 1;
FADE_SPEED = .05;
fade_alpha = 0;

// Textbox
global.text_choices = "00";

/// Start Game
room_goto_next();

action_set_cursor(sp_cursor, 0);
