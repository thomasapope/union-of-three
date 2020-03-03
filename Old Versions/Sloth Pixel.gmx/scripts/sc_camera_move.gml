/// sc_camera_move(xTo, yTo) 
var xTo = argument[0];
var yTo = argument[1];

// Zoom camera
/*var zoom_speed = .05;
view_zoom += (mouse_wheel_up() - mouse_wheel_down()) * zoom_speed;
view_zoom = clamp(view_zoom, 1, view_max_zoom);

view_wview = ob_display_manager.ideal_width / view_zoom;
view_hview = ob_display_manager.ideal_height / view_zoom;*/

// Position camera object
x += (xTo - x) / time;
y += (yTo - y) / time;

// Stop moving the camera at slow speeds - prevents pixel distortion
x = max(floor(x), x-.4);
y = max(floor(y), y-.4);


// Position view
view_xview = x - view_wview / 2;
view_yview = y - view_hview / 2;

//Clamp to room
view_xview = clamp(view_xview, 0, room_width-view_wview);
view_yview = clamp(view_yview, 0, room_height-view_hview);
