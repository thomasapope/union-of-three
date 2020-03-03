/// @description  sc_camera_move(xTo, yTo) 
/// @param xTo
/// @param  yTo
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
__view_set( e__VW.XView, 0, x - __view_get( e__VW.WView, 0 ) / 2 );
__view_set( e__VW.YView, 0, y - __view_get( e__VW.HView, 0 ) / 2 );

//Clamp to room
__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ), 0, room_width-__view_get( e__VW.WView, 0 )) );
__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ), 0, room_height-__view_get( e__VW.HView, 0 )) );
